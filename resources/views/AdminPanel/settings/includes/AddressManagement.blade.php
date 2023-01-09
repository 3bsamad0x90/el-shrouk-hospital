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
        {{Form::textarea('ServicesDes_ar',getSettingValue('ServicesDes_ar'),['id'=>'ServicesDes_ar','class'=>'form-control','rows'=>'3'])}}
        @if($errors->has('ServicesDes_ar'))
        <span class="text-danger" role="alert">
            <b>{{ $errors->first('ServicesDes_ar') }}</b>
        </span>
        @endif
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="ServicesDes_en">الوصف بالإنجليزية</label>
        {{Form::textarea('ServicesDes_en',getSettingValue('ServicesDes_en'),['id'=>'ServicesDes_en','class'=>'form-control','rows'=>'3'])}}
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

    <div class="divider">
        <div class="divider-text"><i data-feather='book-open'></i><b> الأخبار والأحداث</b></div>
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="NewsTitle_ar"> العنوان بالعربية</label>
        {{Form::text('NewsTitle_ar',getSettingValue('NewsTitle_ar'),['id'=>'NewsTitle_ar','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="NewsTitle_en"> العنوان بالإنجليزية</label>
        {{Form::text('NewsTitle_en',getSettingValue('NewsTitle_en'),['id'=>'NewsTitle_en','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="NewsDes_ar">الوصف بالعربية</label>
        {{Form::textarea('NewsDes_ar',getSettingValue('NewsDes_ar'),['id'=>'NewsDes_ar','class'=>'form-control','rows'=>'3'])}}
        @if($errors->has('NewsDes_ar'))
        <span class="text-danger" role="alert">
            <b>{{ $errors->first('NewsDes_ar') }}</b>
        </span>
        @endif
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="NewsDes_en">الوصف بالإنجليزية</label>
        {{Form::textarea('NewsDes_en',getSettingValue('NewsDes_en'),['id'=>'NewsDes_en','class'=>'form-control','rows'=>'3'])}}
        @if($errors->has('NewsDes_en'))
            <span class="text-danger" role="alert">
                <b>{{ $errors->first('NewsDes_en') }}</b>
            </span>
        @endif
    </div>

    <div class="divider">
        <div class="divider-text"><i data-feather='camera'></i><b> المعرض والوسائط</b></div>
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="MediaTitle_ar"> العنوان بالعربية</label>
        {{Form::text('MediaTitle_ar',getSettingValue('MediaTitle_ar'),['id'=>'MediaTitle_ar','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="MediaTitle_en"> العنوان بالإنجليزية</label>
        {{Form::text('MediaTitle_en',getSettingValue('MediaTitle_en'),['id'=>'MediaTitle_en','class'=>'form-control'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="MediaDes_ar">الوصف بالعربية</label>
        {{Form::textarea('MediaDes_ar',getSettingValue('MediaDes_ar'),['id'=>'MediaDes_ar','class'=>'form-control','rows'=>'3'])}}
        @if($errors->has('MediaDes_ar'))
        <span class="text-danger" role="alert">
            <b>{{ $errors->first('MediaDes_ar') }}</b>
        </span>
        @endif
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="MediaDes_en">الوصف بالإنجليزية</label>
        {{Form::textarea('MediaDes_en',getSettingValue('MediaDes_en'),['id'=>'MediaDes_en','class'=>'form-control','rows'=>'3'])}}
        @if($errors->has('MediaDes_en'))
            <span class="text-danger" role="alert">
                <b>{{ $errors->first('MediaDes_en') }}</b>
            </span>
        @endif
    </div>
</div>
<!--/ form -->
