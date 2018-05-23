<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <%/* --> <script src="js/devtool.js"></script><meta charset="utf-8"><body> <!-- */%> -->
<%@ taglib prefix="n"      uri="http://tis.co.jp/nablarch" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t"      tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="field"  tagdir="/WEB-INF/tags/widget/field" %>
<%@ taglib prefix="button" tagdir="/WEB-INF/tags/widget/button" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<t:page_template title="プロジェクト管理システム" noMenu="true">
  <jsp:attribute name="contentHtml">
    <n:form windowScopePrefixes="user">
      <field:block>
        <field:text
          title     = "社員番号"
          name      = "loginId"
          domain    = "半角英数 20"
          maxlength = "20"
          required  = "true"
          >
        </field:text>

        <field:password
          title     = "パスワード"
          name      = "password"
          domain    = "半角英数 20"
          maxlength = "20"
          sample    = "password"
          required  = "true"
          >
        </field:password>
      </field:block>

      <button:block>
        <button:submit
          label = "ログイン"
          uri   = "/action/ss11AA/W11AA01Action/RW11AA0102"
          dummyUri="./W11AB0101.jsp">
        </button:submit>
      </button:block>

    </n:form>
  </jsp:attribute>
</t:page_template>
