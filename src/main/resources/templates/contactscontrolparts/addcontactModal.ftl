<div class="modal fade" id="addcontactModal" tabindex="-1" role="dialog" aria-labelledby=addcontactModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addcontactModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form action="/addphonecontact" method="get">
                    <div class="form-group">
                            <input type="hidden" class="form-control"   id="actiontype" name="actiontype" aria-describedby="button-contact">
                            <input type="hidden" class="form-control"   id="phoneid" name="phoneid" aria-describedby="button-contact">
                            <label for="deletedservicename" id="contactlabel1" class="col-form-label"></label>
                            <br>
                            <input type="text" class="form-control"   id="contactinput1" name="phonestag" aria-describedby="button-contact">
                            <br>

                            <label for="deletedservicename" id="contactlabel2" class="col-form-label"></label>
                            <br>
                            <input type="text" class="form-control"  id="contactinput2" name="phonenum" aria-describedby="button-contact">
                            <br>
                            <div class="input-group-append">
                                <button class="btn btn-outline-primary" type="submit" id="button-contact" ></button>
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
