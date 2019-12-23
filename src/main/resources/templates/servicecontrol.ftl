<#import "parts/common.ftl" as c>

<@c.page>
    <#include "parts/navbar.ftl">
    <#if message?ifExists>
    <h2> ${messagetext} </h2>
    </#if>
    <#list listofsections as sectionn>
    <div class="container px-lg-3">
        <div class="row mx-lg-n3">
            <div class="col py-3 px-lg-3 border bg-light"> <h3> ${sectionn.name}</h3></div>
            <div class="col py-3 px-lg-3 border bg-light">
                <button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editModal" data-whatever="${sectionn.name}">Редактирование раздела</button>
                <button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#aModal" data-whatever="${sectionn.name}">Удалить</button>
                <button type="button"class="btn btn-outline-primary float-left"  data-toggle="modal" data-target="#addserviceModal" data-whatever="${sectionn.name}">Добавить ${nameofitem} в раздел</button>

            </div>
        </div>
    </div>

    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">Название</th>
            <th scope="col">Цена</th>
            <th scope="col">Описание</th>
        </tr>
        </thead>
    <tbody>
        <#list listofservices as service>
            <tr>
                <#if service.sectionName = sectionn.name>
                    <td>${service.name}</td>
                    <td>${service.price}</td>
                    <td>${service.description}</td>
                    <td>
                        <form action="/attachmentsofservice" method="get">
                            <input type="hidden" name="_csrf" value="${_csrf.token}" />
                            <input type="hidden" name="serviceid" value="${service.id}" />
                            <div><input class="btn btn-link" type="submit" value="Приложенные картинки"/></div>
                        </form>
                    </td>
                    <td>
                        <button type="button" class="btn btn-link"  data-toggle="modal" data-target="#deleteModal"data-name="${service.name}" data-whatever="${service.id}">Удалить</button>
                    </td>
                    <td>
                        <button type="button"
                                class="btn btn-link"
                                data-toggle="modal"
                                data-target="#editserviceModal"
                                data-name="${service.name}"
                                data-price="${service.price}"
                                data-description="${service.description}"
                                data-whatever="${service.id}">Редактировать</button>
                    </td>
                </#if>
             </tr>
        </#list>
    </tbody>
    </table>
    </#list>
    <#include "adminpanelparts/addsection.ftl">
    <#include "adminpanelparts/addservice.ftl">
    <#include "adminpanelparts/deletesection.ftl">
    <#include "adminpanelparts/editsection.ftl">
    <#include "adminpanelparts/editservice.ftl">
    <#include "adminpanelparts/deleteservice.ftl">

</@c.page>