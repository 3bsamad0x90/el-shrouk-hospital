<!-- form -->
<div class="row">
    <div class="col-12 col-md-6">
        <label class="form-label" for="address_ar">العنوان بالعربية</label>
        {{Form::text('address_ar',getSettingValue('address_ar'),['id'=>'address_ar','class'=>'form-control'])}}
        @if($errors->has('address_ar'))
            <span class="text-danger" role="alert">
                <b>{{ $errors->first('address_ar') }}</b>
            </span>
        @endif
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="address_en">العنوان بالإنجليزية</label>
        {{Form::text('address_en',getSettingValue('address_en'),['id'=>'address_en','class'=>'form-control'])}}
        @if($errors->has('address_en'))
            <span class="text-danger" role="alert">
                <b>{{ $errors->first('address_en') }}</b>
            </span>
        @endif
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="email">البريد الإلكتروني</label>
        {{Form::text('email',getSettingValue('email'),['id'=>'email','class'=>'form-control'])}}
        @error('email')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="hotLine">الخط الساخن</label>
        {{Form::text('hotLine',getSettingValue('hotLine'),['id'=>'hotLine','class'=>'form-control'])}}
        @error('hotLine')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-12 col-md-12">
        <label class="form-label" for="map">خريطة جوجل</label>
        {{Form::textarea('map',getSettingValue('map'),['id'=>'map','class'=>'form-control','rows'=>'3'])}}
    </div>
    <div class="col-12 col-md-12">
        <label class="form-label" for="imageMap">صورة الخريطة </label>
        {{Form::file('imageMap',['id'=>'imageMap','class'=>'form-control'])}}
        @error('imageMap')
            <div class="alert alert-danger">
                <b>يجب أن تكون الصورة من نوع : jpeg, jpg </b>
            </div>
        @enderror
    </div>
</div>
<!--/ form -->
