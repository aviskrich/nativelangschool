<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
</head>

<body>
       <h1>Тут расписание</h1>
<div class="container">
    <div class="row" style="margin-top: 10px">
        <g:form action='updateEvent' method='POST' class='form-horizontal' role="form">
            <div class="form-group">
                <label for="eventName" class="col-sm-2 control-label">Название мероприятия</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="eventName" name="eventName" value="${eve.username}">
                </div>
            </div>
            <div class="form-group" id="passwordGroup">
                <label for="username" class="col-sm-2 control-label">Пароль</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" id="password1" name="password1" value="" autocomplete="off">
                </div>
                <div class="col-sm-8 col-sm-offset-2" style="margin-top: 12px;">
                    <input type="password" class="form-control" id="password2" name="password2" value="" autocomplete="off">
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label">Группа:</label>
                <div class="col-sm-8">
                    <g:select class="form-control" name="roles"
                              from="${Role.all}" value="${user?.authorities?.size()!=0?user.authorities.first()?.id:null}"
                              optionValue="authority" optionKey="id"/>
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label">Доступен:</label>
                <div class="col-sm-8">
                    <div class="checkbox">
                        <input type="checkbox" name="enabled" <g:if test="${user.enabled}">checked="checked"</g:if>>
                    </div>
                </div>
            </div>

            <input style="display: none" id="userId" name="userId" value="${user.id}">
            <input style="display: none" id="newuser" name="newuser" value="${newuser}">
            <div class="form-group">
                <div class="col-sm-offset-8 col-sm-2 text-right">
                    <button type="submit" id="submit" class="btn btn-default">Сохранить</button>
                </div>
            </div>
        </g:form>
    %{--<div>${user}</div>--}%
    </div>
</div>
</body>
</html>