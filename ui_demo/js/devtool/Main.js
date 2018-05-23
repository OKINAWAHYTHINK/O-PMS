/**
 * @module devtool
 */
define([
  'jquery'
, 'nablarch/ui/Widget'
, 'text!./DevTool.template' // HTMLテンプレート
, './JspPreview'            // ページ内のJSPコードレンダリング結果のプレビュー
, './SpecSheetView'         // 画面項目定義書ビュー
, 'nablarch/ui/LightBox'
, 'nablarch/ui/ContextMenu'

, 'sugar'],
function($, Widget, template, JspPreview, SpecSheetView) { 'use strict';

  ToolMain.widgetType = "devtool_Main";

  /**
   * モック画面JSP開発用ツール
   *
   * 本ツールはbody要素に付随するウィジェットとして実装している。
   *
   * @class devtool.ToolMain
   * @author Iwauo Tajima
   * @since 1.3
   */
  ToolMain.prototype = Object.merge(new Widget(), {
    /**
     * コンストラクタ関数
     *
     * @method ToolMain
     * @constructor
     * @param {HTMLElement} body bodyタグのDOM要素
     */
    constructor: ToolMain
    /**
     * JSPプレビュー表示ウィジェット
     * @property preview
     * @type devtool.JspPreview
     */
  , preview: null
    /**
     * 画面項目定義書ビューウィジェット
     * @property specSheet
     * @type devtool.SpecSheetView
     */
  , specSheet : null
  });

  /**
   * イベント定義
   */
  ToolMain.event = {
    '#contextMenu li.specView click': function() {
      this.specSheet.render(this.preview.$jsp);
    }
  , '#contextMenu li.sourceView click': function() {
      $('.sourceView').jsp_showSource();
    }
  };

  function ToolMain(body) {
    this.constructor = ToolMain;
    this.preview   = $(body).widget(JspPreview);
    $(body).append(template);
    this.specSheet  = $('#specSheetView').widget(SpecSheetView);
    Widget.call(this, body);
    if (document.location.toString().has('nablarch_spec_open_specsheet')) {
      this.specSheet.render(this.preview.$jsp);
    }
  }

  return ToolMain;
});
