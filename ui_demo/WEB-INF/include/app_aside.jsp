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
  <span class="trigger" id="closeMenu"><i class="fa fa-angle-double-left"></i>プロジェクト管理</span>

  <%-- 多段階層のメニュー --%>
  <h3 id="firstStep" class="menu_title">プロジェクト管理</h3>
  <h3 id="secondStep1" class="menu_title menu_folder -title firstStep">個人管理</h3>
  <ul class="menu_folder -title secondStep1">
    <%--
      ViewHandlerで設定される、現在選択中の取引ID（tid）に応じて、
      メニュー項目をハイライト表示する。
    --%>
    <n:set var="W11AC01current" value="${tid=='W11AC01' ? 'current' : ''}" scope="page"/>
    <li class="<n:write name='W11AC01current' /> hover">
      <link:submit
          uri="/action/ss11AC/W11AC01Action/RW11AC0101"
          dummyUri="./W11AC0101.jsp"
          label="">
      <i class="fa fa-list-alt"></i>勤怠申請
      </link:submit>
    </li>

    <n:set var="W11AC02current" value="${tid=='W11AC02' ? 'current' : ''}" scope="page" />
    <li class="<n:write name='W11AC02current' /> hover">
      <link:submit
          uri=""
          dummyUri=""
          label="">
      <i class="fa fa-list-alt"></i>私の勤怠
      </link:submit>
    </li>

    <n:set var="W11AC06current" value="${tid=='W11AC06' ? 'current' : ''}" scope="page" />
    <li class="<n:write name='W11AC06current' /> hover">
      <link:submit
          uri=""
          dummyUri=""
          label="">
      <i class="fa fa-list-alt"></i>日誌入力
      </link:submit>
    </li>

	<n:set var="W11AC06current" value="${tid=='W11AC06' ? 'current' : ''}" scope="page" />
    <li class="<n:write name='W11AC06current' /> hover">
      <link:submit
          uri=""
          dummyUri=""
          label="">
      <i class="fa fa-list-alt"></i>私の日誌
      </link:submit>
    </li>

    <n:set var="W11AC06current" value="${tid=='W11AC06' ? 'current' : ''}" scope="page" />
	<li class="<n:write name='W11AC06current' /> hover">
      <link:submit
          uri=""
          dummyUri=""
          label="">
      <i class="fa fa-list-alt"></i>私の計画
      </link:submit>
    </li>

    <n:set var="W11AC06current" value="${tid=='W11AC06' ? 'current' : ''}" scope="page" />
	<li class="<n:write name='W11AC06current' /> hover">
      <link:submit
          uri=""
          dummyUri=""
          label="">
      <i class="fa fa-list-alt"></i>私のカレンダー
      </link:submit>
    </li>

    <n:set var="W11AC06current" value="${tid=='W11AC06' ? 'current' : ''}" scope="page" />
	<li class="<n:write name='W11AC06current' /> hover">
      <link:submit
          uri=""
          dummyUri=""
          label="">
      <i class="fa fa-list-alt"></i>私のメッセージ
      </link:submit>
    </li>

    <n:set var="W11AC06current" value="${tid=='W11AC06' ? 'current' : ''}" scope="page" />
	<li class="<n:write name='W11AC06current' /> hover">
      <link:submit
          uri=""
          dummyUri=""
          label="">
      <i class="fa fa-list-alt"></i>権限委譲
      </link:submit>
    </li>
    </ul>
  </div>
  <div class="scrollMargin"></div><%-- touch device でコンテキストがスクロールしないように --%>
  </div>
</n:form>
