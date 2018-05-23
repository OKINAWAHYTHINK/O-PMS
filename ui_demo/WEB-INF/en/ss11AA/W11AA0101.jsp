<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <%/* --> <script src="js/devtool.js"></script><meta charset="utf-8"><body> <!-- */%> -->
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags/template" %>
<%@ taglib prefix="field" tagdir="/WEB-INF/tags/widget/field" %>
<%@ taglib prefix="button" tagdir="/WEB-INF/tags/widget/button" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<n:set var="title" value="Login"></n:set>

<t:page_template title="${title}" noMenu="true">
  <jsp:attribute name="topNavHtml">
    <n:form useToken="false">
      <div class="navItem">
        <n:submitLink
          uri="/action/ss11AA/W11AA01Action/RW11AA0101"
          displayMethod="NORMAL">
          日本語
          <n:param paramName="language" value="ja" ></n:param>
        </n:submitLink>
      </div>
    </n:form>
  </jsp:attribute>

  <jsp:attribute name="contentHtml">
    <n:form windowScopePrefixes="user">
      <field:block>
        <field:text title="Login ID" name="loginId" maxlength="20">
        </field:text>
        <field:password title="Password" name="password" maxlength="20">
        </field:password>
      </field:block>

      <button:block>
        <button:submit
            label = "Login"
            uri   = "/action/ss11AA/W11AA01Action/RW11AA0102"
            dummyUri="../ss11AB/W11AB0101.jsp">
        </button:submit>
      </button:block>
    </n:form>
  </jsp:attribute>
</t:page_template>
