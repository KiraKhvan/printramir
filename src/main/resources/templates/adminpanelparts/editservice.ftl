<div class="modal fade" id="editserviceModal" tabindex="-1" role="dialog" aria-labelledby="editserviceModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editserviceModalLabel">${nameofitem} </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form action="<#if controlpaneltype = "service">/editservice<#elseif controlpaneltype = "product">/editproduct</#if>" method="get">
                    <div class="form-group">
                        <input type="hidden" class="form-control" name="serviceid" id="serviceid">
                        <div class="input-group mb-3">
                            <label for="recipient-name" class="col-form-label">Старое название:</label>
                            <input type="text" class="form-control" name="oldservicename" id="oldservicename">
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Новое название:"id="servicename" name="servicename" aria-label="Recipient's username" aria-describedby="button-addon2">
                        </div>

                        <div class="input-group mb-3">
                            <label for="recipient-name" class="col-form-label">Старая цена:</label>
                            <input type="text" class="form-control" name="oldserviceprice" id="oldserviceprice">
                        </div>
                        <div class="input-group mb-3">
                            <label for="recipient-name" class="col-form-label">Новая цена:</label>
                            <input type="text" class="form-control" name="serviceprice" id="serviceprice">
                        </div>
                        <div class="input-group mb-3">
                            <label for="recipient-name" class="col-form-label">Старое описание:</label>
                            <input type="text" class="form-control" name="oldservicedescription" id="oldservicedescription">
                        </div>
                        <div class="input-group mb-3">
                            <label for="recipient-name" class="col-form-label">Новое описание:</label>
                            <textarea class="form-control" name="servicedescription" id="servicedescription"></textarea>
                        </div>
                    </div>


                    <button class="btn btn-outline-primary" type="submit" id="button-addon2">Редактировать</button>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
            </div>
        </div>
    </div>
</div>