<#import "parts/common.ftl" as c>

<@c.page>
    <#include "parts/navbar.ftl">
<table class="table">
    <div class="container px-lg-3">
        <div class="row mx-lg-n3">
            <div class="col py-3 px-lg-3 border bg-light"> <h3> Контактные данные: </h3></div>
            <div class="col py-3 px-lg-3 border bg-light">
              <button type="button" class="btn btn-outline-primary float-left"
                      data-action="add"
                      data-toggle="modal"
                      data-target="#addcontactModal">Добавить новый номер телефона</button>
            </div>
        </div>
    </div>
    <tbody>
    <tr>
        <td>Email:</td>
        <td>${contact.email} </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="email"data-type="email">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="email"data-type="email">Очистить</button></td>
    </tr>
    <tr>
        <td>VK:</td>
        <td>${contact.vk} </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="vk" data-type="vk">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="vk" data-type="vk">Очистить</button></td>
    </tr>
    <tr>
        <td>Instagram:</td>
        <td>${contact.instagramlink} </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="instagram" data-type="instagramlink">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="instagram" data-type="instagramlink">Очистить</button></td>
    </tr>
    <tr>
        <td>WhatsAppp:</td>
        <td>${contact.whatsappphone} </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="номер whatsapp" data-type="whatsappphone">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="номер whatsapp" data-type="whatsappphone">Очистить</button></td>
    </tr>
    <tr>
        <td>Город:</td>
        <td>${contact.city} </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="город" data-type="city">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="город" data-type="city">Очистить</button></td>
    </tr>
    <tr>
        <td>Адрес:</td>
        <td>${contact.address} </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="адрес" data-type="address">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="адрес" data-type="address">Очистить</button></td>
    </tr>
    <tr>
        <td>Страна:</td>
        <td>${contact.country} </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="страна" data-type="country">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="страна" data-type="country">Очистить</button></td>
    </tr>
    <tr>
        <td>График работы:</td>
        <td>${contact.scheduleofwork}</td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="график работ" data-type="scheduleofwork">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="график работ" data-type="scheduleofwork">Очистить</button></td>
    </tr>
    <tr>
        <td>Главный телефон (будет отображаться в навбаре):</td>
        <td>${contact.phone}</td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="edit" data-typeru ="график работ" data-type="phone">Редактировать</button> </td>
        <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#editcontactModal" data-action="delete" data-typeru ="график работ" data-type="phone">Очистить</button></td>
    </tr>
        <#list listoftelephones as telephone>
        <tr>
            <td>Номер телефона:</td>
            <td>${telephone.number} <br/>
                Тэг: ${telephone.tag}</td>
            <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#addcontactModal"
                        data-action="edit"
                        data-telnum ="${telephone.number}"
                        data-id ="${telephone.id}"
                        data-teltag="${telephone.tag}">Редактировать</button> </td>
            <td><button type="button" class="btn btn-outline-primary float-left" data-toggle="modal" data-target="#addcontactModal"
                        data-action="delete"
                        data-telnum ="${telephone.number}"
                        data-id ="${telephone.id}"
                        data-teltag="${telephone.tag}">Удалить</button></td>
        </tr>
        </#list>
    </tbody>
</table>

    <#include "contactscontrolparts/addcontactModal.ftl">
    <#include "contactscontrolparts/editcontact.ftl">
</@c.page>
