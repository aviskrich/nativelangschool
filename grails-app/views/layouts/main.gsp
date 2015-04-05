<%@ page import="language.school.security.User; grails.plugin.springsecurity.SpringSecurityService" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><g:layoutTitle default="Минкульт"/></title>

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">


    %{--<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>--}%

    %{--<link rel="script" href="<g:createLinkTo dir='js' file='bootstrap.js'/>"/>--}%
    %{--<link rel="script" href="<g:createLinkTo dir='datepicker' file='bootstrap-datepicker.js'/>"/>--}%
    %{--<link rel="script" href="<g:createLinkTo dir='datepicker' file='bootstrap-datepicker.ru.js'/>"/>--}%

    %{--<link rel="stylesheet" href="<g:createLinkTo dir='css' file='bootstrap.min.css'/>"/>--}%
    <link rel="stylesheet" href="<g:createLinkTo dir='dir' file='pagination.css'/>"/>
    %{--<link rel="stylesheet" href="<g:createLinkTo dir='css' file='datepicker3.css'/>"/>--}%

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/css/datepicker3.css">

    %{--<link rel="script" href="<g:createLinkTo dir='dir' file='jquery-1.9.1.min.js'/>"/>--}%
    %{--<link rel="script" href="<g:createLinkTo dir='dir' file='bootstrap.min.js'/>"/>--}%
    %{--<link rel="script" href="<g:createLinkTo dir='dir' file='bootstrap-datepicker.js'/>"/>--}%
    %{--<link rel="script" href="<g:createLinkTo dir='dir' file='bootstrap-datepicker.ru.js'/>"/>--}%

    %{--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>--}%
    %{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--}%
    %{--<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>--}%
    %{--<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/locales/bootstrap-datepicker.ru.js"></script>--}%

    <script src="<g:createLinkTo dir='dir' file='jquery-1.9.1.min.js'/>"></script>
    <script src="<g:createLinkTo dir='dir' file='bootstrap.min.js'/>"></script>
    <script src="<g:createLinkTo dir='dir' file='bootstrap-datepicker.js'/>"></script>
    <script src="<g:createLinkTo dir='dir' file='bootstrap-datepicker.ru.js'/>"></script>

    %{--<script src="<g:createLinkTo dir='dir' file='formatter.min.js'/>"></script>--}%
    <script src="<g:createLinkTo dir='dir' file='jquery.formatter.min.js'/>"></script>


    %{--<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.js"></script>--}%
    %{--<script src="https://code.angularjs.org/1.0.8/i18n/angular-locale_ru-ru.js"></script>--}%
    %{--<script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>--}%


    %{--<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>--}%
    %{--<script src="//code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>--}%

    <!-- Bootstrap -->



    %{--<g:javascript/>--}%


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <g:layoutHead/>
    <!--<r:layoutResources/>-->
    <![endif]-->
</head>

<body lang="ru">
<div class="container">
    <div class="container">
        <div class="row">
            <div class="head">
                <div class="row">
                    <div class="col-md-3">
                        <a href="${createLink(uri: '/')}">
                            <img style="max-width:145px; margin-top: 15px;"
                                 src="${createLinkTo(dir: 'images',
                                         file: 'lang_arrows.jpg')}">
                        </a>
                    </div>

                    <div class="col-md-6 text-center">
                        <br>
                        <br>

                        <h3>Школа изучения языков</h3>

                        <h3>Шапка</h3>
                    </div>
                </div>
            </div>

            <!-- Navigation -->
            <nav class="navbar navbar-default" role="navigation" style="margin-top:15px; margin-right: 30px">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <sec:ifAllGranted roles="ROLE_ADMIN">
                            <li>
                                <g:link controller="admin" action="userList"
                                            href="#">Пользователи</g:link>
                            </li>
                        </sec:ifAllGranted>
                        <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_USER,Teacher">
                            <li>
                                <g:link controller="timeTable" action="index" href="#">Расписание</g:link>
                            </li>
                        </sec:ifAnyGranted>
                        <sec:ifLoggedIn>
                            <li>
                                <g:link controller="profile" action="editProfile">Профиль</g:link>
                            </li>
                        </sec:ifLoggedIn>
                        <sec:ifLoggedIn>
                            <li>
                                <g:link controller="event" action="events">Мероприятия</g:link>
                            </li>
                        </sec:ifLoggedIn>
                    </ul>


                    <ul class="nav navbar-nav navbar-right">
                        <sec:ifLoggedIn><li><a href="#"><i
                                class="icon-user"></i> ${new User().getCurrentUserName().username}
                        </a></li></sec:ifLoggedIn>
                        <sec:ifLoggedIn><li><g:link controller="logout">Выйти</g:link></li></sec:ifLoggedIn>
                        <sec:ifNotLoggedIn><li><g:link controller="login">Войти</g:link></li></sec:ifNotLoggedIn>
                        <sec:ifNotLoggedIn><li><g:link controller="register" action="createUser">Регистрация</g:link></li></sec:ifNotLoggedIn>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
</div>

<div class="container">
    <g:layoutBody/>
</div>

<div class="container">

    <hr>

    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Dev community</p>
            </div>
        </div>
    </footer>

</div><!-- /.container -->

<!-- Bootstrap core JavaScript -->
<!-- Placed at the end of the document so the pages load faster -->
%{--<script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>--}%
%{--<r:layoutResources/>--}%
</body>
</html>