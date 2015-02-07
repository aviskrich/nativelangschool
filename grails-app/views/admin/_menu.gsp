<div class="container">
    <ul class="nav nav-tabs">
        <li id="main"><g:link controller="admin" action="index">Общие</g:link></li>
        <li id="user"><g:link controller="admin" action="userList">Ползователи</g:link></li>
    </ul>
</div>

<script type='text/javascript'>
    $(document).ready(function () {
        $('#${current}').addClass('active')
    })
</script>