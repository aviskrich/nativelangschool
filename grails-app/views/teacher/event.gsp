<%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 20.03.2015
  Time: 0:43
--%>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
</head>

<body>

<div class="container">
    <div class="row" style="margin-top: 10px">
        <g:form action='update' method='POST' class='form-horizontal' role="form">
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">Наименование</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="name" name="name">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-8 col-sm-2 text-right">
                    <button type="submit" id="submit" class="btn btn-default">Сохранить</button>
                </div>
            </div>
        </g:form>
    </div>
</div>


</body>
</html>