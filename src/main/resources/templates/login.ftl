<#import "parts/common.ftl" as c>
<@c.page>
<div class="loginback">
    <img src="/static/img/login.jpg">
<form class="login-container" action="/login" method="post">
    <div class="block11">
        <h1>Восхождение на Олимп</h1>
        <div class="form-group">
            <label >Логин:</label>
            <input type="text" name="username" class="form-control" placeholder="User name" />
            <label>Пароль:</label>
            <input type="password" name="password" class="form-control" placeholder="Password" />
        </div>
        <br>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />

        <button class="btn btn-primary" type="submit">Войти</button>
    </div>
</form>
</div>
</@c.page>
