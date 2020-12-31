<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-tmdoptionprosetting" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-tmdoptionprosetting" class="form-horizontal">

          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-setting" data-toggle="tab"><i class="fa fa-cog" style="font-size: 20px;color: #229ac8;"></i> <?php echo $tab_setting; ?></a></li>
            <li><a href="#tab-language" data-toggle="tab"><i class="fa fa-language" style="font-size: 20px;color: #229ac8;"></i> <?php echo $tab_language; ?></a></li>
          </ul>
          <div class="tab-content">
            <!--start tmd pdf 12 feburary -->
            <div class="tab-pane active" id="tab-setting">
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                  <label class="switch">
                    <input type="checkbox" value="1" name="tmdoptionprosetting_status" <?php if ($tmdoptionprosetting_status){ echo "checked"; }else{ echo " ";} ?>>
                    <span class="slider round"></span>
                    <span class="absolute-no">NO</span>
                  </label>
                </div>
              </div>

              <div class="row">
                <div class="col-sm-6">
                  
                  <legend><?php echo  $text_onpropage; ?></legend>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displaysku; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displayprosku" <?php if ($tmdoptionprosetting_displayprosku){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displayupc; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displayproupc" <?php if ($tmdoptionprosetting_displayproupc){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displaymodel; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displaypromodel" <?php if ($tmdoptionprosetting_displaypromodel){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displayean; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displayproean" <?php if ($tmdoptionprosetting_displayproean){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displaydescription; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displayprodescription" <?php if ($tmdoptionprosetting_displayprodescription){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displayimage; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displayproimage" <?php if ($tmdoptionprosetting_displayproimage){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>

                </div>
                <div class="col-sm-6">

                  <legend>On Checkout Page</legend>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displaysku; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displaycartsku" <?php if ($tmdoptionprosetting_displaycartsku){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displayupc; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displaycartupc" <?php if ($tmdoptionprosetting_displaycartupc){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displaymodel; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displaycartmodel" <?php if ($tmdoptionprosetting_displaycartmodel){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displayean; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displaycartean" <?php if ($tmdoptionprosetting_displaycartean){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displaydescription; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displaycartdescription" <?php if ($tmdoptionprosetting_displaycartdescription){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo $entry_displayimage; ?></label>
                    <div class="col-sm-8">
                      <label class="switch">
                        <input type="checkbox" value="1" name="tmdoptionprosetting_displaycartimage" <?php if ($tmdoptionprosetting_displaycartimage){ echo "checked"; }else{ echo " ";} ?>>
                        <span class="slider round"></span>
                        <span class="absolute-no">NO</span>
                      </label>
                    </div>
                  </div>

                </div>
              </div>

              


            </div>
            <div class="tab-pane" id="tab-language">
              <ul class="nav nav-tabs active" id="tmdoptionsetting">
                <?php foreach ($languages as $language) { ?>
                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"> <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                <?php } ?>
              </ul>
              <div class="tab-content">
                <?php foreach ($languages as $language) { ?>
                <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><?php echo $entry_skulabel; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="tmdoptionprosetting_label[<?php echo $language['language_id']; ?>][skulabel]" value="<?php echo isset($tmdoptionprosetting_label[$language['language_id']]) ? $tmdoptionprosetting_label[$language['language_id']]['skulabel'] : ''; ?>" placeholder=""  class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><?php echo $entry_upclabel; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="tmdoptionprosetting_label[<?php echo $language['language_id']; ?>][upclabel]" value="<?php echo isset($tmdoptionprosetting_label[$language['language_id']]) ? $tmdoptionprosetting_label[$language['language_id']]['upclabel'] : ''; ?>" placeholder=""  class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><?php echo $entry_modellabel; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="tmdoptionprosetting_label[<?php echo $language['language_id']; ?>][modellabel]" value="<?php echo isset($tmdoptionprosetting_label[$language['language_id']]) ? $tmdoptionprosetting_label[$language['language_id']]['modellabel'] : ''; ?>" placeholder=""  class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><?php echo $entry_eanlabel; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="tmdoptionprosetting_label[<?php echo $language['language_id']; ?>][eanlabel]" value="<?php echo isset($tmdoptionprosetting_label[$language['language_id']]) ? $tmdoptionprosetting_label[$language['language_id']]['eanlabel'] : ''; ?>" placeholder=""  class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><?php echo $entry_descrlabel; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="tmdoptionprosetting_label[<?php echo $language['language_id']; ?>][descrlabel]" value="<?php echo isset($tmdoptionprosetting_label[$language['language_id']]) ? $tmdoptionprosetting_label[$language['language_id']]['descrlabel'] : ''; ?>" placeholder=""  class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><?php echo $entry_imagelabel; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="tmdoptionprosetting_label[<?php echo $language['language_id']; ?>][imagelabel]" value="<?php echo isset($tmdoptionprosetting_label[$language['language_id']]) ? $tmdoptionprosetting_label[$language['language_id']]['imagelabel'] : ''; ?>" placeholder=""  class="form-control">
                    </div>
                  </div>
                </div>
                <?php } ?>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
 $('#tmdoptionsetting a:first').tab('show');
//-->
</script>
<style>
  .minicolors-theme-bootstrap .minicolors-input{
    width:100%;
    height:35px;
  }
    .component td:first-child{
       cursor:move; 
    }
    .btn-success {
        color: #fff;
        background-color: #afafaf;
        border-color: #afafaf;
    }
    .btn-success:hover,.btn-success:active:hover, .btn-success.active:hover, .open > .btn-success.dropdown-toggle:hover, .btn-success:active:focus, .btn-success.active:focus, .open > .btn-success.dropdown-toggle:focus, .btn-success:active.focus, .btn-success.active.focus, .open > .btn-success.dropdown-toggle.focus, .btn-success:active, .btn-success.active, .open > .btn-success.dropdown-toggle{
      background-color:#33ccff;
      border-color:#33ccff;
    }
.switch {
  position: relative;
  display: inline-block;
  width: 95px;
  height: 30px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  overflow: hidden;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #f2f2f2;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  z-index: 2;
  content: "";
  height: 22px;
  width: 22px;
  left: 4px;
  bottom: 4px;
  background-color: #229ac8;
      -webkit-box-shadow: 0 2px 5px rgba(0, 0, 0, 0.22);
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.22);
  -webkit-transition: .4s;
  transition: all 0.4s ease-in-out;
}
.slider:after {
  position: absolute;
  left: 0;
  z-index: 1;
  content: "YES";
    font-size: 14px;
    text-align: left !important;
    line-height: 30px;
  padding-left: 0;
    width: 95px;
    color: #fff;
    height: 30px;
    border-radius: 100px;
    background-color: #229ac8;
    -webkit-transform: translateX(-160px);
    -ms-transform: translateX(-160px);
    transform: translateX(-160px);
    transition: all 0.4s ease-in-out;
}

input:checked + .slider:after {
  -webkit-transform: translateX(0px);
  -ms-transform: translateX(0px);
  transform: translateX(0px);
  /*width: 235px;*/
  padding-left: 15px;
}

input:checked + .slider:before {
  background-color: #fff;
}

input:checked + .slider:before {
  -webkit-transform: translateX(63px);
  -ms-transform: translateX(63px);
  transform: translateX(63px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 100px;
}

.slider.round:before {
  border-radius: 50%;
}
.absolute-no {
  position: absolute;
  left: 0;
  color: #229ac8;
  text-align: right !important;
    font-size: 14px;
    width: calc(100% - 15px);
    height: 30px;
    line-height: 30px;
    cursor: pointer;
} 
</style>
<?php echo $footer; ?>