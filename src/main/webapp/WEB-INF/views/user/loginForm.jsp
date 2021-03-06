<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><!-- 한글 깨짐 방지 -->

<%@ include file="../layout/header.jsp" %>
<div class="container">
  <form action="/auth/loginProc" method="post">
    <div class="form-group">
      <label for="email">Username</label>
      <input
        type="text"
        class="form-control"
        placeholder="Enter Username"
        id="username"
        name="username"
      />
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <input
        type="password"
        class="form-control"
        placeholder="Enter password"
        id="password"
        name="password"
      />
    </div>

    <button id="btn-login" class="btn btn-primary">로그인</button>
    <a
      href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=8938f98bcb5d5c357fb2e656163e237c&redirect_uri=http://localhost:8000/auth/kakao/callback"
      ><img height="38" src="/image/kakao_login_btn.png"
    /></a>
  </form>
</div>
<!-- <script src="/js/user.js"></script> -->
<%@ include file="../layout/footer.jsp" %>
