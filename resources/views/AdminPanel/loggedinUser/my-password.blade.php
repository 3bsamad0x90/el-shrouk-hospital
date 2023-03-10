@extends('AdminPanel.layouts.master')

@section('content')
    <div class="row">
        <div class="col-12">
            <ul class="nav nav-pills mb-2">
                <!-- account -->
                <li class="nav-item">
                    <a class="nav-link" href="{{route('admin.myProfile')}}">
                        <i data-feather="user" class="font-medium-3 me-50"></i>
                        <span class="fw-bold">الحسـاب</span>
                    </a>
                </li>
                <!-- security -->
                <li class="nav-item">
                    <a class="nav-link active" href="{{route('admin.myPassword')}}">
                        <i data-feather="lock" class="font-medium-3 me-50"></i>
                        <span class="fw-bold">إعدادات الأمان</span>
                    </a>
                </li>
            </ul>

            <!-- profile -->
            <div class="card">
                <div class="card-header border-bottom">
                    <h4 class="card-title">الحسـاب</h4>
                </div>
                <div class="card-body my-25">
                    {{Form::open(['files'=>'true','class'=>'validate-form'])}}


                        <!-- form -->
                        <div class="row pt-1">
                            <div class="col-12 col-sm-6">
                                <label class="form-label" for="password">كلمة المرور</label>
                                {{Form::password('password',['id'=>'password','class'=>'form-control','required'])}}
                                @if($errors->has('password'))
                                    <span class="text-danger" role="alert">
                                        <b>{{ $errors->first('password') }}</b>
                                    </span>
                                @endif
                            </div>
                            <div class="col-12 col-sm-6">
                                <label class="form-label" for="passwordConfirmation">تأكيد كلمة المرور</label>
                                {{Form::password('password_confirmation',['id'=>'passwordConfirmation','class'=>'form-control','required'])}}
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary mt-1 me-1">حفظ التغييرات</button>
                            </div>
                        </div>
                        <!--/ form -->
                    {{Form::close()}}
                </div>
            </div>
        </div>
    </div>
@stop
