<#import "parts/common.ftl" as c>

<@c.page>
    <#include "parts/navbar.ftl">
    <div style="width: 40%;  margin-left: auto;
    margin-right: auto;">
        <h1>Параметры аккаунта:</h1>
        <br>
        <div class="form-group">
            <label >Логин: ${login}</label>
            <br>
            <button type="button"
                        class="btn btn-outline-primary"
                        data-toggle="modal"
                        data-target="#editaccountparameterModal"
                        data-oldvalue =" ${login}"
                        data-type="login">Изменить логин</button>
            <br>
            <label>Пароль: ${password}</label>
            <br>
            <button type="button"
                    class="btn btn-outline-primary"
                    data-toggle="modal"
                    data-target="#editaccountparameterModal"
                    data-oldvalue ="${password}"
                    data-type="password">Изменить пароль</button>
        </div>
        <br>
    </div>
    <#include "editaccountparameter.ftl">
</@c.page>
