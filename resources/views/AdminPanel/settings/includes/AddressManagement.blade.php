<!-- form -->
<div class="row">
    <div class="divider">
        <div class="divider-text"><i data-feather='columns'></i><b>الخدمات</b></div>
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="ServicesTitle_ar"> العنوان بالعربية</label>
        {{Form::text('ServicesTitle_ar',getSettingValue('ServicesTitle_ar'),['id'=>'ServicesTitle_ar','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="ServicesTitle_en"> العنوان بالإنجليزية</label>
        {{Form::text('ServicesTitle_en',getSettingValue('ServicesTitle_en'),['id'=>'ServicesTitle_en','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="ServicesDes_ar">الوصف بالعربية</label>
        {{Form::textarea('ServicesDes_ar',getSettingValue('ServicesDes_ar'),['id'=>'ServicesDes_ar','class'=>'form-control editor_ar','rows'=>'3'])}}
        @if($errors->has('ServicesDes_ar'))
        <span class="text-danger" role="alert">
            <b>{{ $errors->first('ServicesDes_ar') }}</b>
        </span>
        @endif
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="ServicesDes_en">الوصف بالإنجليزية</label>
        {{Form::textarea('ServicesDes_en',getSettingValue('ServicesDes_en'),['id'=>'ServicesDes_en','class'=>'form-control editor_en','rows'=>'3'])}}
        @if($errors->has('ServicesDes_en'))
            <span class="text-danger" role="alert">
                <b>{{ $errors->first('ServicesDes_en') }}</b>
            </span>
        @endif
    </div>
    <div class="divider">
        <div class="divider-text"><i data-feather='heart'></i><b>مميزاتنا</b></div>
    </div>
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
