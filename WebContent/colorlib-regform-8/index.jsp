<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="main">    		
        <section class="signup">
            <!-- <img src="images/shoes2.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form action="joinAction.jsp" method="post" id="signup-form" class="signup-form">
                        <h2 class="form-title">회원가입</h2>
                        <div class="form-group">
                            <input type="text" class="form-input" name="JOIN_id" placeholder="아이디"/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-input" name="JOIN_email" placeholder="이메일"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="JOIN_pw" placeholder="비밀번호"/>
                            <span class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="JOIN_name" placeholder="이름"/>                            
                        </div>

                        <div class="form-group">
                            <input type="submit" name="join" id="join" class="form-submit" value="회원가입"/>
                        </div>                        											
                    </form>
                    
                    <p class="loginhere">
                        이미 계정이 있으신가요? <a href="../Login_v4/login.jsp" class="loginhere-link" title="로그인">로그인</a>
                    </p>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>