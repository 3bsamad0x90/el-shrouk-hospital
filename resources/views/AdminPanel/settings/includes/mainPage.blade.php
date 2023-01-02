<!-- form -->
<div class="row">
    <div class="col-12 col-md-6">
        <label class="form-label" for="mainPageTitle_ar"> عنوان الصفحة الرئيسية بالعربية</label>
        {{Form::text('mainPageTitle_ar',getSettingValue('mainPageTitle_ar'),['id'=>'mainPageTitle_ar','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="mainPageTitle_en"> عنوان الصفحة الرئيسية بالإنجليزية</label>
        {{Form::text('mainPageTitle_en',getSettingValue('mainPageTitle_en'),['id'=>'mainPageTitle_en','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="mainPageDesc_ar">وصف الصفحة الرئيسية بالعربية</label>
        {{Form::textarea('mainPageDesc_ar',getSettingValue('mainPageDesc_ar'),['id'=>'mainPageDesc_ar','class'=>'form-control editor_ar','rows'=>'3'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="mainPageDesc_en">وصف الصفحة الرئيسية بالإنجليزية</label>
        {{Form::textarea('mainPageDesc_en',getSettingValue('mainPageDesc_en'),['id'=>'mainPageDesc_en','class'=>'form-control editor_en','rows'=>'3'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="mainPageImage">الصورة بالصفحة الرئيسية</label>
        {{Form::file('mainPageImage',['id'=>'mainPageImage','class'=>'form-control'])}}
    </div>
</div>
<!--/ form -->
