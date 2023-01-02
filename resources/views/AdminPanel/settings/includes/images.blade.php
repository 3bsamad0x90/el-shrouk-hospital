<!-- form -->
<div class="row">
    <div class="col-md-3 text-center">
        <h4>لـوجــو الموقع</h4>
        {!! getSettingImageValue('logo') !!}
        <div class="file-loading">
            <input class="files" name="logo" type="file">
        </div>
        @error('logo')
            <div class="alert alert-danger text-bold">*يجب أن تكون صورة</div>
        @enderror
    </div>
</div>
<!--/ form -->
