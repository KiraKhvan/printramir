
<div class="modal fade" id="editcontactModal" tabindex="-1" role="dialog" aria-labelledby="editcontactModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editcontactModalLabel">Раздел</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form id="editcontactform" action="/edit" method="get">
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control"  id="editedelement" name="editedelement" aria-describedby="button-addon2">
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

