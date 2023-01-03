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
        <label class="form-label" for="siteDescription_ar"> وصف الموقع بالعربية</label>
        {{Form::textarea('siteDescription_ar',getSettingValue('siteDescription_ar'),['rows'=>'3','id'=>'siteDescription_ar','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="siteDescription_en">وصف الموقع بالإنجليزية</label>
        {{Form::textarea('siteDescription_en',getSettingValue('siteDescription_en'),['rows'=>'3','id'=>'siteDescription_en','class'=>'form-control'])}}
    </div>

</div>
<!--/ form -->
