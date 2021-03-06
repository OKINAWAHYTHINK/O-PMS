<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <%/* --> <script src="js/devtool.js"></script><meta charset="utf-8"><body> <!-- */%> -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="field"  tagdir="/WEB-INF/tags/widget/field" %>
<%@ taglib prefix="button" tagdir="/WEB-INF/tags/widget/button" %>
<%@ taglib prefix="table"  tagdir="/WEB-INF/tags/widget/table" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/widget/layout" %>
<%@ taglib prefix="column" tagdir="/WEB-INF/tags/widget/column" %>
<%@ taglib prefix="spec" tagdir="/WEB-INF/tags/widget/spec" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<t:page_template title="勤怠申請">
	  <jsp:attribute name="contentHtml">
	  <spec:layout name="勤怠検索 入力欄">
	  <n:form windowScopePrefixes="11AC_W11AC01">

	  <tab:group name="tab">

  	  <%-- クライアントサイドで切り替えを行うタブ --%>
      <tab:content title="勤怠検索" selected="true" value="tab_baseinfo">

	      <field:pulldown
	        title                = "プロジェクト名称"
	        name                 = "11AC_W11AC01.ugroupId"
	        domain               = "UGROUP_ID"
	        dataFrom             = "UGROUP.UGROUP_ID|UGROUP.UGROUP_NAME"
	        listName             = "ugroupList"
	        elementLabelProperty = "ugroupName"
	        elementValueProperty = "ugroupId"
	        withNoneOption       = "true"
	        sample               = "開発１部公共項目|開発２部公共項目">
	      </field:pulldown>



			  <field:calendar
			    title                = "検索期間"
			    name                 = "wsDateFrom"
			    cssClass             = "wsDate">
			  </field:calendar>


		  <field:radio
		    title                = "申請区分"
		    name                 = "appdiff"
		    readonly             = "false"
		    listFormat           = "sp"
		    listName             = "appdiffList"
        	elementLabelProperty = "appdiffName"
        	elementValueProperty = "appdiffId"
		    sample               = "休暇|打刻補正|外出|[全体]">
		  </field:radio>



		  <field:radio
		    title                = "確認状態"
		    name                 = "confirmstatus"
		    readonly             = "false"
		    listFormat           = "sp"
		    listName             = "confirmstatusList"
        	elementLabelProperty = "confirmstatusName"
        	elementValueProperty = "confirmstatusId"
		    sample               = "未確認|確認済|[全体]">
		  </field:radio>


     </tab:content>

	  <%-- サーバサイドにリクエストを送信するタブ --%>
	  <tab:link
	      title="勤怠新規"
	      uri="/action/ss11AC/W11AC01Action/RW11AC0102"
	      dummyUri="./W11AC0103.jsp">
	  </tab:link>
	  </tab:group>

	    <button:block>
	      <button:search uri="/action/ss11AC/W11AC01Action/RW11AC0102" dummyUri="./W11AC0101.jsp">
	        <n:param paramName="11AC_W11AC01.pageNumber" value="1"></n:param>
	        <n:param paramName="11AC_W11AC01.sortId" value="1"></n:param>
	      </button:search>
	    </button:block>
	  </n:form>
	  </spec:layout>

	  <n:form windowScopePrefixes="11AC_W11AC01">
	    <spec:layout name="ユーザ情報検索結果">

	    <table:search_result
	      title               = "検索結果"
	      searchUri           = "/action/ss11AC/W11AC01Action/RW11AC0102"
	      listSearchInfoName  = "11AC_W11AC01"
	      resultSetName       = "searchResult"
	      sampleResults       = "15">

	      <column:checkbox
	        title    = "選択"
	        key      = "userId"
	        name     = "W11AC05.userBeans[${count - 1}].userId"
	        offValue = "0000000000">
	      </column:checkbox>

	      <column:link
	        title    = "ログインID"
	        key      = "loginId"
	        uri      = "/action/ss11AC/W11AC01Action/RW11AC0103"
	        dummyUri = "./W11AC0102.jsp"
	        domain   = "LOGIN_ID"
	        dataFrom = "SYSTEM_ACCOUNT.LOGIN_ID"
	        sample   = "user001|user002|user003">
	        <n:param paramName="11AC_W11AC01.userId" name="row.userId"></n:param>
	      </column:link>

	      <column:label
	        title    = "漢字氏名"
	        key      = "kanjiName"
	        sortable = "true"
	        domain   = "KANJI_NAME"
	        dataFrom = "USERS.KANJI_NAME"
	        sample   = "名部　楽太郎|名部　楽次郎|名部　楽三郎|田嶋　岩魚">
	      </column:label>

	      <column:label
	        title    = "カナ氏名"
	        key      = "kanaName"
	        sortable = "true"
	        domain   = "KANA_NAME"
	        dataFrom = "USERS.KANA_NAME"
	        sample   = "ナブ　ラクタロウ|ナブ　ラクジロウ|ナブ　ラクサブロウ|タジマ　イワウオ">
	      </column:label>

	      <column:label
	        title    = "グループ"
	        key      = "ugroupName"
	        domain   = "UGROUP_ID"
	        dataFrom = "UGROUP.UGROUP_ID|UGROUP.UGROUP_NAME"
	        sample   = "-|お客様グループ|一般グループ">
	      </column:label>

	      <column:label
	        title    = "内線番号"
	        key      = "extensionNumber"
	        value    = "${row.extensionNumberBuilding} - ${row.extensionNumberPersonal}"
	        domain   = "EXT_NUM_BUILDING|EXT_NUM_PERSONAL"
	        dataFrom = "USERS.EXTENSION_NUMBER_BUILDING|USERS.EXTENSION_NUMBER_PERSONAL"
	        sample   = "12-3456|98-7654">
	      </column:label>

	      <column:code
	        title        = "ロック"
	        key          = "userIdLocked"
	        codeId       = "C0000001"
	        labelPattern = "$OPTIONALNAME$"
	        sample       = "-">
	      </column:code>

	      <column:link
	        title   = "更新"
	        value   = "更新"
	        dummyUri= "./W11AC0301.jsp"
	        domain  = "USER_ID"
	        dataFrom= "SYSTEM_ACCOUNT.USER_ID"
	        uri     = "/action/ss11AC/W11AC03Action/RW11AC0301">
	        <n:param paramName="11AC_W11AC01.userId" name="row.userId"></n:param>
	        <n:param paramName="W11AC03.userId"      name="row.userId"></n:param>
	      </column:link>

	      <column:link
	        title   = "削除"
	        value   = "削除"
	        dummyUri= "./W11AC0401.jsp"
	        inactive= "${row.userId == sessionScope['user.id']}"
	        domain  = "USER_ID"
	        dataFrom= "SYSTEM_ACCOUNT.USER_ID"
	        uri     = "/action/ss11AC/W11AC04Action/RW11AC0401">
	        <n:param paramName="11AC_W11AC01.userId" name="row.userId"></n:param>
	        <n:param paramName="W11AC04.userId"      name="row.userId"></n:param>
	      </column:link>

	    </table:search_result>

	    <c:if test="${not empty resultCount}">
	    <spec:desc>検索ボタン押下後</spec:desc>
	    <button:block>

	      <c:if test="${resultCount > 0}">
	      <spec:desc>検索結果が1件以上あった場合</spec:desc>

	      <button:submit
	        label    = "一括削除"
	        dummyUri = "./W11AC0501.jsp"
	        uri      = "/action/ss11AC/W11AC05Action/RW11AC0501">
	        <%-- 削除データ用カウント --%>
	        <n:param paramName="W11AC05.userBeansSize" name="searchResultSize" ></n:param>
	      </button:submit>

	      <button:download
	        label    = "ダウンロード"
	        size     = "4"
	        dummyUri = "./W11AC0101.jsp"
	        uri      = "/action/ss11AC/W11AC01Action/RW11AC0104">
	      </button:download>

	      </c:if>

	      <button:submit
	        label    = "新規登録"
	        dummyUri = "./W11AC0201.jsp"
	        uri      = "/action/ss11AC/W11AC02Action/RW11AC0201">
	      </button:submit>

	    </button:block>
	    </c:if>

	    </spec:layout>
	  </n:form>
	  </jsp:attribute>
</t:page_template>

