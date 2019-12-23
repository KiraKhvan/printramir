<div class="modal fade" id="aModal" tabindex="-1" role="dialog" aria-labelledby="aModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="aModalLabel">Подтвердите удаление</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="<#if controlpaneltype = "service">/deletesection<#elseif controlpaneltype = "product">/deletesectionofproducts</#if>" method="get">
                    <div class="form-group">

                        <label for="recipient-name" class="col-form-label">Название секции:</label>
                        <input type="text" class="form-control" name="sectionname" id="recipient-name">
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
