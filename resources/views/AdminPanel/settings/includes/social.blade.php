<!-- form -->
<div class="row">
    <div class="col-12 col-md-6">
        <label class="form-label" for="facebook">فيس بوك</label>
        {{Form::text('facebook',getSettingValue('facebook'),['id'=>'facebook','class'=>'form-control'])}}
        @error('facebook')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="twitter">تويتر</label>
        {{Form::text('twitter',getSettingValue('twitter'),['id'=>'twitter','class'=>"form-control"])}}
        @error('twitter')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="instagram">إنستجرام</label>
        {{Form::text('instagram',getSettingValue('instagram'),['id'=>'instagram','class'=>'form-control'])}}
        @error('instagram')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="youtube">يوتيوب</label>
        {{Form::text('youtube',getSettingValue('youtube'),['id'=>'youtube','class'=>'form-control'])}}
        @error('youtube')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="whatsapp">واتساب</label>
        {{Form::text('whatsapp',getSettingValue('whatsapp'),['id'=>'whatsapp','class'=>'form-control'])}}
        @error('whatsapp')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-12 col-md-6">
        <label class="form-label" for="linkedin">لينكدأن</label>
        {{Form::text('linkedin',getSettingValue('linkedin'),['id'=>'linkedin','class'=>'form-control'])}}
        @error('linkedin')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
</div>
