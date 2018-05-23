<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="link" tagdir="/WEB-INF/tags/widget/link" %>

<n:form name="asideMenu">
<div id="menuControl" class="nablarch_SlideMenu -open #openMenu -close #closeMenu -context .nablarch_TreeMenu">
  <span class="trigger" id="openMenu"><i class="fa fa-bars trigger-icon"></i></span>
</div>
<div id="slideInMenu"  class="nablarch_TreeMenu -name asideMenu">
  <n:plainHidden name="asideMenu"/>
  <div class="scrollMenu">
  <span class="trigger" id="closeMenu"><i class="fa fa-angle-double-left"></i>メニューを閉じる</span>
  <h3 id="navLink">
    <link:submit
          uri="javascript:alert('pluginではalert表示です。navにtopMenuへのリンクがある場合に利用してください。');"
          dummyUri="javascript:alert('pluginではalert表示です。navにtopMenuへのリンクがある場合に利用してください。');"
          label="">
       <i class="fa fa-list"></i>トップメニュー
    </link:submit>
  </h3>
  <h3 id="sampleMenu1" class="menu_title"><i class=""></i>サンプルレイアウト1</h3>
  <ul class="menu_folder -title sampleMenu1">
    <li class="hover">
      <link:submit
        uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
        dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
        label="">
        <i class="fa fa-list-alt"></i>サンプルレイアウト
      </link:submit>
    </li>
  </ul>

  <%-- 多段階層のメニュー --%>
  <h3 id="firstStep" class="menu_title"><i class=""></i>1階層目のタイトル(大分類)</h3>
  <ul class="menu_folder -title firstStep">
    <li class="hover">
      <link:submit
        uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
        dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
        label="">
        <i class="fa fa-list-alt"></i>2階層目(小分類)
      </link:submit>
    </li>
  </ul>

  <h3 id="secondStep1" class="menu_title menu_folder -title firstStep"><i class=""></i>2階層目 1(中分類)</h3>
  <ul class="menu_folder -title secondStep1">
    <li class="hover">
      <link:submit
          uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
          dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
          label="">
      <i class="fa fa-list-alt"></i>3階層目1-1(小分類)
      </link:submit>
    </li>
    <li class="hover">
      <link:submit
          uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
          dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
          label="">
      <i class="fa fa-list-alt"></i>3階層目1-2(小分類)
      </link:submit>
    </li>
    <li class="hover">
      <link:submit
          uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
          dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
          label="">
      <i class="fa fa-list-alt"></i>3階層目1-3(小分類)
      </link:submit>
    </li>
  </ul>

  <h3 id="secondStep2" class="menu_title menu_folder -title firstStep"><i class=""></i>2階層目2(中分類)</h3>
  <ul class="menu_folder -title secondStep2">
    <li class="hover">
      <link:submit
          uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
          dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
          label="">
            <i class="fa fa-list-alt"></i>3階層目2-1(小分類)
      </link:submit>
    </li>
    <li class="hover">
      <link:submit
          uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
          dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
          label="">
            <i class="fa fa-list-alt"></i>3階層目2-2(小分類)
      </link:submit>
    </li>
    <li class="hover">
      <link:submit
          uri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はuriをentryPointに書き換えてください。');"
          dummyUri="javascript:alert('pluginではalert表示です。メニューから遷移する場合はdummyUriをentryPointに書き換えてください。');"
          label="">
            <i class="fa fa-list-alt"></i>3階層目2-3(小分類)
      </link:submit>
    </li>
  </ul>
  <%-- 以下はレイアウト確認用 --%>
  <h3 id="testMenus" class="menu_title menu_folder -title firstStep"><i class=""></i>打鍵テスト用</h3>
  <h3 id="testUser" class="menu_title menu_folder -title testMenus">ユーザー</h3>
  <ul class="menu_folder -title testUser">
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label="">
        <i class="fa fa-list-alt"></i>登録
      </link:submit>
    </li>
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label="">
        <i class="fa fa-list-alt"></i>照会
      </link:submit>
    </li>
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label="">
        <i class="fa fa-list-alt"></i>一覧
      </link:submit>
    </li>
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label="">
        <i class="fa fa-list-alt"></i>UL
      </link:submit>
    </li>
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label="">
        <i class="fa fa-list-alt"></i>DL
      </link:submit>
    </li>
  </ul>
  <h3 id="longTitle" class="menu_title menu_folder -title testMenus">長いラベルの場合の確認</h3>
  <ul class="menu_folder -title longTitle">
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label="">
        <i class="fa fa-list-alt"></i>折り返すような長いラベル。(クリックするとデモに遷移。)
      </link:submit>
    </li>
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label="">
        <i class="fa fa-list-alt"></i>折り返すような長いラベル。(クリックするとデモに遷移。)
      </link:submit>
    </li>
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label=""><i class="fa fa-list-alt"></i>ユーザー登録</link:submit>
    </li>
    <li class="hover">
      <link:submit uri="./index.jsp" dummyUri="./index.jsp"label=""><i class="fa fa-list-alt"></i>ユーザー詳細参照</link:submit>
    </li>
  </ul>
  <div class="largeArea">
  <h3 id="manyLines" class="menu_title menu_folder -title testMenus">スクロールするか確認</h3>
  <ul class="menu_folder -title manyLines">
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover"><link:submit uri="./index.jsp" dummyUri="./index.jsp" label=""><i class="fa fa-list-alt"></i>クリックするとデモに遷移。</link:submit></li>
    <li class="hover">
      <link:submit uri="javascript:alert('this is last');" dummyUri="javascript:alert('this is last');" label="">
         <i class="fa fa-list-alt"></i>最後の要素
      </link:submit>
    </li>
  </ul>
  </div>
  <div class="scrollMargin"></div><%-- touch device でコンテキストがスクロールしないように --%>
  </div>
</div>
</n:form>
