<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><!-- 한글 깨짐 방지 -->

<%@ include file="../layout/header.jsp" %>
<div class="container">
  <form>
    <input type="hidden" id="id" value="${principal.user.id}" />
    <div class="form-group">
      <label for="email">Username</label>
      <input
        type="text"
        class="form-control"
        placeholder="Enter Username"
        id="username"
        readonly
        value="${principal.user.username}"
      />
    </div>
    <c:if test="${empty principal.user.oauth}">
      <div class="form-group">
        <label for="password">Password</label>
        <input
          type="password"
          class="form-control"
          placeholder="Enter password"
          id="password"
        />
      </div>
    </c:if>
    <div class="form-group">
      <label for="email">Email</label>
      <input
        type="email"
        class="form-control"
        placeholder="Enter email"
        id="email"
        value="${principal.user.email}"
        readonly
      />
    </div>
  </form>
  <button id="btn-update" class="btn btn-primary">수정완료</button>
</div>
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>
