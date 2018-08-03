<form class='form-horizontal' action=$SELF_URL method='get' id='item_form' name='item_form' role='form'>
  <input type=hidden name=index value=$index>
 
  <fieldset>
    <div class='box box-form'>
      <div class='box-header with-border'>
        <h4 class='box-title'>_{SERVICE}_</h4>
        <span class='pull-right'></span>
      </div>
      <div class='box-body'>
        <div class='form-group'>
          <label class='control-label col-md-3 text-left'  for='ITEM_NAME'>_{ITEM_NAME}_</label>
          <div class='col-md-9'>
            <input id='ITEM_NAME' name='ITEM_NAME' value='%ITEM_NAME%' class='form-control' type='text' autocomplete="off" required>
          </div>
        </div>
        <div class='form-group'>
          <label class='control-label col-md-3 text-left'  for='PRICE'>_{PRICE}_</label>
          <div class='col-md-9'>
            <input id='PRICE' name='PRICE' value='%PRICE%' class='form-control' type='number' autocomplete="off" required>
          </div>
        </div>
        <div class='form-group' >
          <label class='control-label col-md-3 text-left'  for='HEADER_NAME'>_{HEADER_NAME}_</label>
          <div class='col-md-9'>
            %HEADER_SELECT%       
          </div>
        </div>  
      </div>
      <div class='box-footer'>
        <input type=submit name=%ACTION% value='%LNG_ACTION%' class="btn btn-primary" >
      </div>
    </div>
  </fieldset>
</form>
