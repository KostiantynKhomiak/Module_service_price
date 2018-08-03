<!doctype html>
<html>
<head>
  <meta charset="utf-8">
	<meta name="description" content="The HTML5 Herald">
	<meta name="author" content="SitePoint">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style type="text/css">
  .panel-heading .accordion-toggle:after {
    /* symbol for "opening" panels */
    font-family: 'Glyphicons Halflings';  /* essential for enabling glyphicon */
    content: "\e114";    /* adjust as needed, taken from bootstrap.css */
    float: right;        /* adjust as needed */
    color: grey;         /* adjust as needed */
}
.panel-heading .accordion-toggle.collapsed:after {
    /* symbol for "collapsed" panels */
    content: "\e080";    /* adjust as needed, taken from bootstrap.css */
}
  .left_list {
    padding-left: 0;
  }
  .right_list {
    padding-left: 0;
  }
  .list_1 {
    padding-top: 5px;
    padding: 0;    
  }
  .panel.panel-info {
    margin-bottom: 0;

  }
  .list_2 {
    padding-top: 0;
    padding-right: 0;    
  }
</style>	
</head>
<body>
	<div class="container-fluid">
    <div class="row">
      <div class="col-sm-12 col-md-6">
    	<div class="panel panel-primary">
    		<div class="panel-heading">Предложение</div>
	    <div class="list_1">
	      %HEADER_PANEL_LEFT%
      </div>
    </div>
  </div>
  <div class="col-sm-12 col-md-6">
    <div class="panel panel-primary">
      <div class="panel-heading">Список избранных услуг</div>

      <div class="list_2">
	      
          %HEADER_PANEL_RIGHT%
          <div class="panel-footer">

            <p align="left">Сума:<span class="float-right" id="fullsumm"></span>
              <input type="button" class="btn btn-danger" value="Подтвердить" style="display: inline; float: right;">
            </p>
          </div>
        </div>
        </div>
      </div>
      </div>
    </div>
  </div>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script type="text/javascript">
   var summ = 0;
	jQuery(".list-group-item").on( "click", function() {
    if (jQuery(this).parents(".list_1").length) {
      var group_id = jQuery(this).parent().attr("data-id");
      jQuery(".list_2").find("[data-id='" + group_id + "']").append(this);
      jQuery(this).children(".toggle_icons").children().siblings().toggle();
    }
    else {
      var group_id = jQuery(this).parent().attr("data-id");
      jQuery(".list_1").find("[data-id='" + group_id + "']").append(this);
      jQuery(this).children(".toggle_icons").children().siblings().toggle();
    }
    summ = recount();
    jQuery("#fullsumm").html(summ);
  });
 
    jQuery( ".head" ).click(function() {
    jQuery(this).children().siblings().toggle();
    jQuery(this).siblings().toggle();

    });  
    jQuery( ".right" ).click(function() {
    jQuery(this).children().siblings().toggle();
    jQuery(this).siblings().toggle();

    }); 


	function recount() {
    var summ = 0;
    jQuery(".right_list").children("li").each(function() {
      summ += +jQuery(this).children("span.label").attr("price") || 0;
      // jQuery("#fullsumm").html(summ);
    });
  return summ;
  };

      
</script>