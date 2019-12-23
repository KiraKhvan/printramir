<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Раздел</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form action="<#if controlpaneltype = "service">/editsection<#elseif controlpaneltype = "product">/editsectionofproducts</#if>" method="get">
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <label for="recipient-name" class="col-form-label">Старое имя</label>
                            <input type="text" class="form-control" name="oldsectionname" id="oldsectionname">
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Новое имя:"id="sectionname" name="newsectionname" aria-label="Recipient's username" aria-describedby="button-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-outline-primary" type="submit" id="button-addon2">Редактировать</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
            </div>
        </div>
    </div>
</div>