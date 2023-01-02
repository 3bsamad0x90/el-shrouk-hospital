<!-- form -->
<div class="row">
    <div class="divider">
        <div class="divider-text">معلومات أرشفة محركات البحث العامة</div>
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="siteTitle_ar">اسم الموقع بالعربية</label>
        {{Form::text('siteTitle_ar',getSettingValue('siteTitle_ar'),['id'=>'siteTitle_ar','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="siteTitle_en">اسم الموقع بالإنجليزية</label>
        {{Form::text('siteTitle_en',getSettingValue('siteTitle_en'),['id'=>'siteTitle_en','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="siteDescription">وصف الموقع</label>
        {{Form::textarea('siteDescription',getSettingValue('siteDescription'),['rows'=>'3','id'=>'siteDescription','class'=>'form-control'])}}
    </div>

</div>
<!--/ form -->
