define([
  "jquery"
, "nablarch/ui/Widget"
, "sugar"
],
function($, Widget) {'use strict';

  /**
   * スライドメニュー
   * ===================
   * メニューなど共通的な項目をスライドさせる部品である。
   * スライドした際には、他の要素をユーザーが誤操作しないように背景(background)を利用して隠蔽する。
   * 
   * マークアップ仕様
   * ------------------------
   * 任意の場所(表示したいメニュー領域外でも良い)にマーカーCSSクラス **nablarch_SlideMenu** を指定する。
   * 表示、非表示を切り替える場合に利用するボタンなどは **-open** 、 **-close** にjQueryのセレクタを指定する。
   * 
   * 指定したopen, close の要素はメニューの表示、非表示によりスタイルを切り替えられるように、クラス属性が追加、削除される。
   * 明示的に要素のstyleプロパティは制御しないため、別途スタイルシートで定義する必要がある。
   *
   *  下記の例では、メニューの表示、非表示でclass属性が変更される点を示す。
   *
   *  * 初期表示のマークアップ
   *
   *
   *     <div class="nablarch_SlideMenu -open #openMenu -close #closeMenu -context div.aside_menu -slideFrom left">
   *       <span id="openMenu" class="show"><i class="fa fa-bars"></i></span>
   *       <span id="closeMenu" class="hide"><i class="fa fa-cancel"></i></span>
   *     </div>
   *     <div class="aside_menu hide">...</div>
   *
   *
   *  * openをクリックし、メニュを表示状態に変更した場合
   *
   *
   *     <div class="nablarch_SlideMenu -open #openMenu -close #closeMenu -context div.aside_menu -slideFrom left">
   *       <span id="openMenu" class="hide"><i class="fa fa-bars"></i></span>
   *       <span id="closeMenu" class="show"><i class="fa fa-cancel"></i></span>
   *     </div>
   *     <div class="aside_menu show">...</div>
   *
   *  * closeもしくは背景要素をクリックし、メニュー非表示状態に変更した場合
   *
   *
   *     <div class="nablarch_SlideMenu -open #openMenu -close #closeMenu -context div.aside_menu -slideFrom left">
   *       <span id="openMenu" class="show"><i class="fa fa-bars"></i></span>
   *       <span id="closeMenu" class="hide"><i class="fa fa-cancel"></i></span>
   *     </div>
   *     <div class="aside_menu hide">...</div>
   *
   * TouchDeviceのサポート
   * 
   * メニュー領域のスタイルを変更できるよう、
   * touchイベントをサポートするデバイスでは **-context** で指定された要素のclass属性に "touchdevice" を追加する。
   *
   * @class nablarch.ui.SlideMenu
   * @author tani
   * @since 1.4.2
   */
  SlideMenu.prototype = Object.merge(new Widget, {
    /**
     * コンストラクタ。
     *
     * @method SlideMenu
     * @constructor
     * @param {Element} element 表示、非表示を切り替える対象
     * @param {Object} opts オプション
     *    **open:** (`String`) clickイベントで表示する際に使用するElementを指定するselector
     *    **close:** (`String`) clickイベントで非表示する際に使用するElementを指定するselector
     *    **context:**(`String`) メニュー領域を指定するselector
     *    **slideFrom:**(`String`) スライドさせる方向を指定する(left|right)
     */
    constructor : SlideMenu
    /**
     * スライドさせて表示するDOM要素。
     * 
     * @property $context
     * @type jQuery
     */
  , $context : null
    /**
     * clickイベントで$contextを表示させるDOM。
     * 
     * @property $open
     * @type jQuery
     */
  , $open : null
    /**
     * clickイベントで$contextを非表示にするDOM。
     * 
     * @property $close
     * @type jQuery
     */
  , $close : null
    /**
     * メニューを非表示にする。
     * その際に$openを表示できるようにする。(class属性からhideを削除し、showを付与する。)
     * 
     * @method hide
     * @param event
     */
  , hide : SlideMenu_hide
   /**
    * メニューを表示する。
    * その際に$openを非表示にできるようにする。(class属性からshowを削除し、hideを付与する。)
    * 
    * @method show
    * @param event
    */
  , show : SlideMenu_show
   /**
    * $contextの animatePropの初期位置。
    * 
    * @property initpos
    * @type String
    */
  , initpos : null
   /**
    * スライドする差異に利用するアニメーションさせるプロパティ。
    * 
    * @property animateProp
    * @Type String
    * 
    */
  , animateProp : ""
  /**
   * メニュー標示時の全体の背景要素のDOM。
   * styleは
   * body > div.nablarch_screen
   * にて指定できる。
   * 
   * @property $background
   */
  , $background : null
  });

  /**
   * イベント定義。
   * 
   * SlideMenu.event {
   *    "$open click"       : "show"
   *  , "$close click"      : "hide"
   *  , "$background click" : "hide"
   * }
   *
   * @static
   */
  SlideMenu.event = {
    "$open click"       : "show"
  , "$close click"      : "hide"
  , "$background click" : "hide"
  , "$background touchmove" : stopScroll
  };

  Widget.register(SlideMenu);

  SlideMenu.widgetType = "nablarch_SlideMenu";
  var scrollOff = "scrollOff"

  function SlideMenu(element, opts) {
    this.$context = hide($(opts.context));
    this.animateProp = opts.slideFrom || "left";
    this.initpos = this.$context.css(this.animateProp);

    this.$open    = show($(opts.open));
    this.$close   = hide($(opts.close));
    this.$background = hide(createScreen());
    this.constructor = SlideMenu;
    Widget.call(this, element);
    if ('ontouchstart' in window) {
      this.$context.addClass('touchdevice');
    }

    function createScreen() {
      var $screen = $('div.nablarch_screen');
      return $screen.length == 0 ? $('<div>').addClass("nablarch_screen").appendTo('body')
                                 :  $screen;
    }
  }

  function SlideMenu_hide(event) {
    hide(this.$context).css(this.animateProp, this.initpos);
    hide(this.$close);
    hide(this.$background);
    show(this.$open);
    $('body').removeClass('scrollOff');
  }
  
  function SlideMenu_show(event) {
    var self = this
      , style = {};
    style[self.animateProp] = "0";
    hide(self.$open);
    show(self.$background);
    show(self.$context).animate(style);
    show(self.$close);
    $('body').addClass('scrollOff');
  }
  
  /*
   * 表示、非表示の切替をするための補助関数。
   * 
   * $.fn.(show|hide)ではレスポンシブで対応しづらいのでclassの付け替えで対応する。
   */
  function show($node) {
    return $node.addClass("show").removeClass("hide");
  }
  function hide($node) {
    return $node.addClass("hide").removeClass("show");
  }
  function stopScroll(event) {
    event.preventDefault();
  }
  
  return SlideMenu;
});
