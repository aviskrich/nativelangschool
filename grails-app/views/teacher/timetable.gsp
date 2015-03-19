<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    %{--<r:require module="withDatapicker"/>--}%
</head>

<body>

<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-6">
                <p>Карточка учителя</p>
            </div>
        </div>
    </div>
    <g:if test="${teacher != null && teacher.eventList.size()>0}">
        <table class="table">
            <thead>
            <tr>
                <g:sortableColumn property='name' title='Наименование'/>
                <g:sortableColumn property='timeBegin' title='Время начала'/>
                <g:sortableColumn property='timeEnd' title='Время окончания'/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${teacher.eventList}" var="event" status="i">
                <tr>
                    <td>${event.name}</td>
                    <td>${event.timeBegin}</td>
                    <td>${event.timeEnd}</td>
                </tr>
            </g:each>
            </tbody>
            <tfoot>
            </tfoot>
        </table>
    </g:if>
    <br>
    <div class="row">
        <div class="pull-right" style="padding-right: 15px !important;">
            <g:link action="createEvent" class="btn btn-default">Добавить новый</g:link>
        </div>
    </div>
</div>
</body>
</html>