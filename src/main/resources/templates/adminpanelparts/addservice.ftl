<div class="modal fade" id="addserviceModal" tabindex="-1" role="dialog" aria-labelledby="addserviceModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addserviceModalLabel">${nameofitem} </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form action="<#if controlpaneltype = "service">/addservice<#elseif controlpaneltype = "product">/addproduct</#if>" method="get" >
                    <div class="form-group">
                            <input type="hidden" class="form-control" id="addservicesectionname" name="addservicesectionname" aria-label="Recipient's username" aria-describedby="button-addon2">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Название ${nameofitem} :</label>
                                <input type="text" class="form-control" name="servicename" id="servicename">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Цена ${nameofitem} :</label>
                                <input type="text" class="form-control" name="serviceprice" id="serviceprice">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Опиание ${nameofitem} :</label>
                                <textarea class="form-control"name="servicedescription" id="servicedescription"></textarea>
                            </div>
                    </div>
                    <button class="btn btn-outline-primary" type="submit" id="button-addon2">Добавить</button>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
            </div>
        </div>
    </div>
</div>