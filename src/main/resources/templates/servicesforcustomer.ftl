<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/banner.ftl">
    <#include "parts/navbar.ftl">
<div class="mx-auto" style="width: 80%;">

    <#list listofsections as sectionn>
        <div class="panel-heading"  style="width: 100%;">
            <h3> ${sectionn.name}</h3>
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
                </#if>
            </tr>
            </#list>
        </tbody>
    </table>
    </#list>
</div>
    <#include "parts/footer.ftl">
</@c.page>