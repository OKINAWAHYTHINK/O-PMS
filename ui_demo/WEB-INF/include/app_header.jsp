<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="n" uri="http://tis.co.jp/nablarch" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="link" tagdir="/WEB-INF/tags/widget/link" %>

<div class="grid-row">
  <c:if test="${not empty commonHeaderLoginUserName}">
    <n:form useToken="false">
      <link:submit label="" uri="/action/ss11AB/W11AB01Action/RW11AB0101" id="brand_logo">
        <span />
      </link:submit>
    </n:form>
  </c:if>
  <c:if test="${empty commonHeaderLoginUserName}">
    <div id="brand_logo">
    <span />
    </div>
  </c:if>

  <h1 id="title">
    <n:prettyPrint name="pageTitle" />
  </h1>
</div>
