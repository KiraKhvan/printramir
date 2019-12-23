<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="aModalLabel">Подтвердите удаление</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="<#if controlpaneltype = "service">/deleteservice<#elseif controlpaneltype = "product">/deleteproduct</#if>" method="get">
                    <div class="form-group">
                        <input type="hidden" class="form-control" name="deletedserviceid" id="deletedserviceid">
                        <label for="deletedservicename" class="col-form-label">Название услгуги:</label>
                        <span    id="deletedservicename"></span>
                    </div>
                    <button type="submit" class="btn btn-primary">Подтвердить</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>

            </div>
        </div>
    </div>
</div>
