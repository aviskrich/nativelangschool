<html>
<head>
    <meta name='layout' content='main'/>
</head>

<body>
<div class="section">
    <div class="container">


        <div class="row">
            <div class="col-lg-12">
                <g:if test='${flash.message}'>
                    <div class='alert alert-danger'>
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        ${flash.message}
                    </div>
                </g:if>

                <form action='${postUrl}' method='POST' id='loginForm' class='form-horizontal' role="form" autocomplete='off'>
                    <h2 class="form-signin-heading col-lg-offset-4">Авторизация</h2>
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">Имя</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="username" name="j_username" placeholder="Имя пользователя">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Пароль</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="password" name="j_password" placeholder="Пароль">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="${rememberMeParameter}" id="remember_me" <g:if test="${hasCookie}">checked="checked"</g:if>/>Запомните меня
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" id="submit" class="btn btn-default">Вход</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
