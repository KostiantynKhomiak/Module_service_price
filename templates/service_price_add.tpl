    <form class='form-horizontal' action=$SELF_URL method='get' id='header_form' name='header_form' role='form'>
      <input type=hidden name=index value=$index>
      <fieldset>
        <div class='box box-form'>
          <div class='box-header with-border'>
            <h4 class='box-title'>_{SERVICE}_</h4>
            <span class='pull-right'></span>
          </div>
          <div class='box-body'>
            <div class='form-group'>
              <label class='control-label col-md-3 text-left'  for='SERVICE'>_{SERVICE}_</label>
              <div class='col-md-9'>
                <input id='HEADER_NAME' name='HEADER_NAME' value='%HEADER_NAME%' class='form-control' type='text' autocomplete="off" required>
              </div>
            </div>
          </div>
          <div class='box-footer'>
            <input type=submit name=%ACTION% value='%LNG_ACTION%' class="btn btn-primary" >
          </div>
        </div>
      </fieldset>
    </form>

