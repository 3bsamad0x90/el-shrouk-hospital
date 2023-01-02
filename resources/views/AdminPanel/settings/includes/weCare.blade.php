<!-- form -->
<div class="row">
    <div class="col-12 col-md-6">
        <label class="form-label" for="weCareTitle_ar"> العنوان بالعربية</label>
        {{Form::text('weCareTitle_ar',getSettingValue('weCareTitle_ar'),['id'=>'weCareTitle_ar','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="weCareTitle_en"> العنوان بالإنجليزية</label>
        {{Form::text('weCareTitle_en',getSettingValue('weCareTitle_en'),['id'=>'weCareTitle_en','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="weCareImage">الصورة</label>
        {{Form::file('weCareImage',['id'=>'weCareImage','class'=>'form-control'])}}
    </div>
</div>
<!--/ form -->
