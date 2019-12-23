<div class="modal fade" id="editaccountparameterModal" tabindex="-1" role="dialog" aria-labelledby="editaccountparameterModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editaccountparameterModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form action="/editaccountparameter" method="get">
                    <div class="form-group">
                        <input type="hidden" class="form-control"   id="parametertype" name="parametertype" aria-describedby="button-contact">
                        <label for="editaccountinput1" id="editaccountlabel1" class="col-form-label"></label>
                        <br>
                        <input type="text" class="form-control"   id="editaccountinput1" name="elementvalue" aria-describedby="button-editaccountparameter">
                        <br>
                        <div class="input-group-append">
                            <button class="btn btn-outline-primary" type="submit" id="button-editaccountparameter" >Изменить</button>
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
