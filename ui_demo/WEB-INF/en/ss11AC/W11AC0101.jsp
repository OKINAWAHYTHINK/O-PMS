<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <%/* --> <script src="js/devtool.js"></script><meta charset="utf-8"><body> <!-- */%> -->
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="field"  tagdir="/WEB-INF/tags/widget/field" %>
<%@ taglib prefix="button" tagdir="/WEB-INF/tags/widget/button" %>
<%@ taglib prefix="table"  tagdir="/WEB-INF/tags/widget/table" %>
<%@ taglib prefix="column" tagdir="/WEB-INF/tags/widget/column" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<t:page_template title="User List Search">
  <jsp:attribute name="contentHtml">
    <n:form windowScopePrefixes="11AC_W11AC01">
      <field:block title="Search Condition">
        <field:text title="Login ID" name="11AC_W11AC01.loginId" maxlength="20">
        </field:text>
        
        <field:text title="Kanji Name" name="11AC_W11AC01.kanjiName" maxlength="20">
        </field:text>
        
        <field:text title="Kana Name" name="11AC_W11AC01.kanaName" maxlength="20">
        </field:text>

        <field:pulldown
            title                = "Group"
            name                 = "11AC_W11AC01.ugroupId"
            listName             = "ugroupList"
            elementLabelProperty = "ugroupName"
            elementValueProperty = "ugroupId"
            withNoneOption       = "true">
        </field:pulldown>

        <field:code_pulldown
            title            = "User ID<br />Locked"
            name             = "11AC_W11AC01.userIdLocked"
            codeId           = "C0000001"
            pattern          = "PATTERN01"
            optionColumnName = "OPTION01"
            labelPattern     = "$OPTIONALNAME$"
            withNoneOption   = "true">
        </field:code_pulldown>
      </field:block>

      <button:block>
        <button:search uri="/action/ss11AC/W11AC01Action/RW11AC0102" label="Search" dummyUri="./W11AC0101.jsp">
          <n:param paramName="11AC_W11AC01.pageNumber" value="1"></n:param>
          <n:param paramName="11AC_W11AC01.sortId" value="1"></n:param>
        </button:search>
      </button:block>
    </n:form>
    <n:form windowScopePrefixes="11AC_W11AC01">
      <%-- 削除データ用カウント --%>
      <n:hidden name="W11AC05.userBeansSize"></n:hidden>

      <table:search_result
          title               = "Search Result"
          searchUri           = "/action/ss11AC/W11AC01Action/RW11AC0102"
          listSearchInfoName  = "11AC_W11AC01"
          resultSetName       = "searchResult"
          sampleResults       = "15">

        <column:checkbox
            title    = ""
            key      = "userId"
            name     = "W11AC05.systemAccountEntityArray[${count-1}].userId"
            offValue = "0000000000">
        </column:checkbox>

        <column:link
            title    = "Login ID"
            key      = "loginId"
            uri      = "/action/ss11AC/W11AC01Action/RW11AC0103"
            dummyUri = "./W11AC0102.jsp"
            sample   = "user001|user002|user003">
          <n:param paramName="11AC_W11AC01.systemAccount.userId" name="row.userId"></n:param>
        </column:link>

        <column:label
            title    = "Kanji Name"
            key      = "kanjiName"
            sortable = "true">
        </column:label>

        <column:label
            title    = "Kana Name"
            key      = "kanaName"
            sortable = "true">
        </column:label>

        <column:label
            title  = "Group"
            key    = "ugroupName">
        </column:label>

        <column:label
            title = "Ext.<br />Number"
            key   = "extensionNumber"
            value = "${row.extensionNumberBuilding} - ${row.extensionNumberPersonal}"
            sample = "12-3456|98-7654">
        </column:label>

        <column:label
            title  = "E-mail"
            key    = "mailAddress"
            sample = "nablarch@example.com|nabu@example.co.jp">
        </column:label>

        <column:code
            title        = "Lock"
            key          = "userIdLocked"
            codeId       = "C0000001"
            labelPattern = "$OPTIONALNAME$"
            sample       = "-">
        </column:code>

        <column:link
            title = "upd"
            value = "upd"
            dummyUri= "./W11AC0301.jsp"
            uri   = "/action/ss11AC/W11AC03Action/RW11AC0301">
          <n:param paramName="11AC_W11AC01.systemAccount.userId" name="row.userId"></n:param>
          <n:param paramName="W11AC03.systemAccount.userId"      name="row.userId"></n:param>
        </column:link>

        <column:link
            title = "del"
            value = "del"
            dummyUri= "./W11AC0401.jsp"
            uri   = "/action/ss11AC/W11AC04Action/RW11AC0401">
          <n:param paramName="11AC_W11AC01.systemAccount.userId" name="row.userId"></n:param>
          <n:param paramName="W11AC04.systemAccount.userId"      name="row.userId"></n:param>
        </column:link>

      </table:search_result>
    </n:form>
  </jsp:attribute>
</t:page_template>
