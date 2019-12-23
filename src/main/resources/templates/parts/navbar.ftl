<#include "security.ftl">

<nav class="navbarm">
    <div class="navbarm-container">
        <div class="nav-brand"> <a  href="/">ПЕЧАТЬ В АКТОБЕ </a></div>
        <input id="nav__toggle" type="checkbox"/>
        <label class="nav_btn-mmm" for="nav__toggle">
            <div  class="nav__btn"> <span></span>   </div>
        </label>
        <ul class="nav__box">
            <li class="nav__item">
                <a  href="/main">Главная</a>
            </li>
            <li class="nav__item">
                <a  href="/services">Услуги|Цены</a>
            </li>
            <li class="nav__item">
                <a  href="/products">Товары</a>
            </li>
            <li class="nav__item">
                <a  href="/contacts">Наши работы</a>
            </li>
            <li class="nav__item">
                <a  href="/contacts">Контакты</a>
            </li>
        </ul>
    </div>
</nav>

<#if isUser>
    <nav class="controlbar">
            <ul>
                <li >
                    <a href="/contactscontrol">Управление контактами</a>
                </li>
                <li >
                    <a  href="/servicecontrol">Управление услугами</a>
                </li>
                <li >
                    <a  href="/accountparametercontrol">Управление параметрами аккаунта</a>
                </li>
                <li>
                    <a  href="/productscontrol">Управление товарами</a>
                </li>
            </ul>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit" class="btn btn-primary">Выйти</button>
        </form>
    </nav>
</#if>