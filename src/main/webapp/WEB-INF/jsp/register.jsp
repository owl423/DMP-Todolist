<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>회원가입 - Check Check</title>
  <script src="https://unpkg.com/vue@2.5.3/dist/vue.min.js"></script>  
  <link rel="stylesheet" href="/static/css/register.css">
</head>
<body>
  <div class="wrapper">
    <header class="header">
      <div class="header-wrapper">
        <h1 class="title">Sign Up</h1>
        <a href="/login" class="back" title="로그인 화면으로 돌아가기">돌아가기</a>
      </div>
    </header>
    <main id="main">
      <register></register>
    </main>
    <script id="register-template" type="text/x-template">
      <form @submit.prevent>
        <div class="input-wrapper">
          <label :class="usernameValidation ? '' : 'error'" for="username">아이디</label>
          <input type="text" id="username" placeholder="Username"
            :class="usernameValidation ? '' : 'error'"
            ref="inputUsername"
            @input="checkUsername">
        </div>
        <div class="input-wrapper">
          <label :class="passwordValidation ? '' : 'error'" for="password">비밀번호</label>
          <input type="password" id="password" placeholder="Password" 
            :class="passwordValidation ? '' : 'error'" 
            ref="inputPassword" 
            @input="checkPassword">
        </div>
        <div class="input-wrapper">
          <label :class="confirmPasswordValidation ? '' : 'error'" for="confirm-password">비밀번호 확인</label>
          <input type="password" id="confirm-password" placeholder="Confirm Password" 
            :class="confirmPasswordValidation ? '' : 'error'" 
            ref="inputConfirmPassword" 
            @input="confirmPassword">
        </div>
        <button class="sign-up-btn" @click="register">Sign Up</button>
      </form>
    </script>
    <script src="/static/scripts/register.js"></script>
  </div>
</body>
</html>
