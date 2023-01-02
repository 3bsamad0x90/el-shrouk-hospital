<!-- form -->
<div class="row">

    <div class="col-12 col-md-12">
        <label class="form-label" for="aboutusDes_ar">الوصف بالعربية</label>
        {{Form::textarea('aboutusDes_ar',getSettingValue('aboutusDes_ar'),['id'=>'aboutusDes_ar','class'=>'form-control editor_ar','rows'=>'3'])}}
        @if($errors->has('aboutusDes_ar'))
        <span class="text-danger" role="alert">
            <b>{{ $errors->first('aboutusDes_ar') }}</b>
        </span>
        @endif
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="aboutusDes_en">الوصف بالإنجليزية</label>
        {{Form::textarea('aboutusDes_en',getSettingValue('aboutusDes_en'),['id'=>'aboutusDes_en','class'=>'form-control editor_en','rows'=>'3'])}}
        @if($errors->has('aboutusDes_en'))
            <span class="text-danger" role="alert">
                <b>{{ $errors->first('aboutusDes_en') }}</b>
            </span>
        @endif
    </div>
    <div class="divider">
        <div class="divider-text">التفاصيل</div>
    </div>
    @for($i=1; $i<=3; $i++)
    <div class="row pt-2 pb-4">
        <h3>العنصر #{{$i}}</h3>
        <div class="col-md-6 text-center">
            <label class="d-flex form-label text-black justify-content-start" for="aboutUs{{$i}}icon"> الأيقونة #{{$i}}</label>
            {!! getSettingImageValue('aboutUs'.$i.'icon') !!}
            <div class="file-loading">
                <input class="files" name="aboutUs{{$i}}icon" type="file" id="aboutUs{{$i}}icon">
            </div>
        </div>
        <div class="col-md-12"></div>
        <div class="col-12 col-md-6">
            <label class="form-label" for="aboutUs{{$i}}title_ar">العنوان بالعربية</label>
            {{Form::text('aboutUs'.$i.'title_ar',getSettingValue('aboutUs'.$i.'title_ar'),['id'=>'aboutUs'.$i.'title_ar','class'=>'form-control'])}}
        </div>
        <div class="col-12 col-md-6">
            <label class="form-label" for="aboutUs{{$i}}title_en">العنوان بالإنجليزية</label>
            {{Form::text('aboutUs'.$i.'title_en',getSettingValue('aboutUs'.$i.'title_en'),['id'=>'aboutUs'.$i.'title_en','class'=>'form-control'])}}
        </div>

        <div class="col-md-12"></div>
        <div class="col-12 col-md-6">
            <label class="form-label" for="aboutUs{{$i}}des_ar">الوصف بالعربية</label>
            {{Form::textarea('aboutUs'.$i.'des_ar',getSettingValue('aboutUs'.$i.'des_ar'),['id'=>'aboutUs'.$i.'des_ar','class'=>'form-control','rows'=>'3'])}}
        </div>
        <div class="col-12 col-md-6">
            <label class="form-label" for="aboutUs{{$i}}des_en">الوصف بالإنجليزية</label>
            {{Form::textarea('aboutUs'.$i.'des_en',getSettingValue('aboutUs'.$i.'des_en'),['id'=>'aboutUs'.$i.'des_en','class'=>'form-control','rows'=>'3'])}}
        </div>


    </div>
    @endfor

</div>
<!--/ form -->
