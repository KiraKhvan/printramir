$('#aModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $(this)
    modal.find('.modal-title').text('Удаление раздела ' + recipient + '. Раздел удалится вместе со всеми услугами!')
    modal.find('.modal-body input').val(recipient)
})


$('#deleteModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal

    var deletedserviceid = button.data('whatever')
    var deletedservicename = button.data('name')

    var modaldeletedserviceid = $('#deletedserviceid')
    modaldeletedserviceid.val(deletedserviceid)

    var modaldeletedservicename = $('#deletedservicename')
    modaldeletedservicename.text(deletedservicename)
})
$('#editModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $('#oldsectionname')
    modal.val(recipient)

})
$('#editserviceModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var name = button.data('name')
    var modalname = $('#oldservicename')
    modalname.val(name)

    var price = button.data('price')
    var modalprice = $('#oldserviceprice')
    modalprice.val(price)

    var description = button.data('description')
    var modaldescription = $('#oldservicedescription')
    modaldescription.val(description)

    var modal = $('#serviceid')
    modal.val(recipient)

})

$('#addserviceModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $('#addservicesectionname')
    modal.val(recipient)

})

$('#addcontactModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var action = button.data('action')
    var contactlabel1 = $('#contactlabel1')
    var contactlabel2 = $('#contactlabel2')
    var modalbutton = $('#button-contact')
    var actiontype = $('#actiontype')
    var modal = $(this)
    if(action == 'add'){
        modal.find('.modal-title').text( "Добавление нового номера телефона: ")
        modalbutton.text("Добавить")
        contactlabel1.text("Тэг к номеру телефона:")
        contactlabel2.text("Номер телефона:")
        actiontype.val("add")
    }else {
        var telnum = button.data('telnum')
        var teltag = button.data('teltag')
        var id = button.data('id')
        var phoneid = $('#phoneid')
        phoneid.val(id)
        if (action == 'edit') {
            actiontype.val("edit")
            modal.find('.modal-title').text("Редактирование номера телефона: ")
            modalbutton.text("Редактировать")
            contactlabel1.text("Старый тэг к номеру телефона: " + teltag + ". Введите новый:")
            contactlabel2.text("Старый номер телефона: " + telnum + ". Введите новый:")

        }
        if (action == 'delete') {
            actiontype.val("delete")
            modal.find('.modal-title').text("Удаление номера телефона: ")
            modalbutton.text("Удалить")
            contactlabel1.text("Тэг телефона: " + teltag + ".")
            contactlabel2.text("Номер телефона: " + telnum + ".")
            var contactinput1 =  $('#contactinput1')
            contactinput1.attr('type', 'hidden')
            var contactinput2 = $('#contactinput2')
            contactinput2.attr('type', 'hidden')
        }
    }

})

$('#editaccountparameterModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget)
    var modal = $(this)
    var type = button.data('type')
    var editaccountlabel1 = $('#editaccountlabel1')
    var oldvalue = $('#oldvalue')
    modal.find('.modal-title').text( "Редактирование "+ type)
    var oldvalue = $('#oldvalue')
    var parametertype = $('#parametertype')
    editaccountlabel1.val("Старое значение " + type + ": " + oldvalue + ". Введите новое значение:")
    parametertype.val(type)
})

$('#editcontactModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget)
    var typeru = button.data('typeru')
    var type = button.data('type')
    var modal = $(this)
    var action = button.data('action')
    if(action == 'edit'){

        modal.find('.modal-title').text( "Редактирование "+ typeru)
        modal.find('.modal-body form').attr('action', '/editelement')
        modal.find('.modal-body input').val(type)
        modal.find('.modal-body button').text('Редактировать')
        $('<input/>')
            .attr('value', type)
            .attr('type', 'hidden')
            .attr("name", "typeelement")
            .appendTo("#editcontactform");
    }
    if(action == 'delete'){
        modal.find('.modal-title').text( "Очистить поле "+ typeru)
        modal.find('.modal-body form').attr('action', '/deleteelement')
        modal.find('.modal-body input').val(type)
        modal.find('.modal-body input').attr('type', 'hidden')
        modal.find('.modal-body button').text('Очистить')
    }

})
