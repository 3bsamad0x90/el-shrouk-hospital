@extends('AdminPanel.layouts.master')
@section('content')

    <!-- Bordered table start -->
    <div class="row" id="table-bordered">
        <div class="col-12">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul class="text-bold">
                        @foreach ($errors->all() as $error)
                            <li class="mb-1 text-bold">{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">{{$title}}</h4>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered mb-2">
                        <thead>
                            <tr>
                                <th class="text-center">الإسم</th>
                                <th class="text-center">المسمى الوظيفي</th>
                                <th class="text-center">الصورة</th>
                                <th class="text-center">الإجراءات</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($ourTeams as $ourTeam)
                            <tr id="row_{{ $ourTeam->id }}">
                                    <td  class="text-center">
                                        {{$ourTeam->name_ar}}<br>
                                        {{$ourTeam->name_en}}
                                    </td>
                                    <td class="text-center">
                                        {{$ourTeam->title_ar}}<br>
                                        {{$ourTeam->title_en}}
                                    </td>
                                    <td class="text-center">
                                        <img class="round border" src="{{$ourTeam->photoLink()}}" alt="avatar" width="100px">
                                    </td>
                                    <td class="text-center">
                                        <a href="javascript:;" data-bs-target="#editourTeam{{$ourTeam->id}}" data-bs-toggle="modal" class="btn btn-icon btn-info" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="{{trans('common.edit')}}">
                                            <i data-feather='edit'></i>
                                        </a>
                                        <?php $delete = route('admin.ourTeam.delete',['id'=>$ourTeam->id]); ?>
                                        <button type="button" class="btn btn-icon btn-danger" onclick="confirmDelete('{{$delete}}','{{$ourTeam->id}}')" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="{{trans('common.delete')}}">
                                            <i data-feather='trash-2'></i>
                                        </button>
                                    </td>
                            </tr>
                            @empty
                                <tr>
                                    <td colspan="5" class="p-3 text-center ">
                                        <h2>لا يوجد أي بيانات لعرضها الآن</h2>
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
{{-- Edit ourTeam --}}
                @foreach($ourTeams as $ourTeam)
                    <div class="modal fade text-md-start" id="editourTeam{{$ourTeam->id}}" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                            <div class="modal-content">
                                <div class="modal-header bg-transparent">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body pb-5 px-sm-5 pt-50">
                                    <div class="text-center mb-2">
                                        <h1 class="mb-1">{{trans('common.edit')}}</h1>
                                    </div>
                                    {{Form::open(['url'=>route('admin.ourTeam.update',['id'=>$ourTeam->id]), 'id'=>'editourTeamForm', 'class'=>'row gy-1 pt-75', 'files'=>true])}}
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="name_ar">الإسم بالعربية</label>
                                            {{Form::text('name_ar',$ourTeam->name_ar,['id'=>'name_ar', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="name_en">الإسم بالإنجليزية</label>
                                            {{Form::text('name_en',$ourTeam->name_en,['id'=>'name_en', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="title_ar">المسمى الوظيفي بالعربية</label>
                                            {{Form::text('title_ar',$ourTeam->title_ar,['id'=>'title_ar', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="title_en">المسمى الوظيفي بالإنجليزية</label>
                                            {{Form::text('title_en',$ourTeam->title_en,['id'=>'title_en', 'class'=>'form-control'])}}
                                        </div>

                                        <div class="col-12 col-md-12">
                                            <label class="form-label" for="image">الصورة</label>
                                            {{Form::file('image',['id'=>'image', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 text-center mt-2 pt-50">
                                            <button type="submit" class="btn btn-primary me-1">{{trans('common.Save changes')}}</button>
                                            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
                                                {{trans('common.Cancel')}}
                                            </button>
                                        </div>
                                    {{Form::close()}}
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
    <!-- Bordered table end -->



@stop
{{-- create New ourTeam --}}
@section('page_buttons')
    <a href="javascript:;" data-bs-target="#createourTeam" data-bs-toggle="modal" class="btn btn-primary">
        إضافة جديد
    </a>
    <div class="modal fade text-md-start" id="createourTeam" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
            <div class="modal-content">
                <div class="modal-header bg-transparent">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body pb-5 px-sm-5 pt-50">
                    <div class="text-center mb-2">
                        <h1 class="mb-1">إضافة جديد</h1>
                    </div>
                    {{Form::open(['url'=>route('admin.ourTeam.store'), 'id'=>'createourTeamForm', 'class'=>'row gy-1 pt-75', 'files'=>true])}}
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="name_ar">الإسم بالعربية</label>
                            {{Form::text('name_ar','',['id'=>'name_ar', 'class'=>'form-control'])}}
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="name_en">الإسم بالإنجليزية</label>
                            {{Form::text('name_en','',['id'=>'name_en', 'class'=>'form-control'])}}
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="title_ar">المسمى الوظيفي بالعربية</label>
                            {{Form::text('title_ar','',['id'=>'title_ar', 'class'=>'form-control'])}}
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="title_en">المسمى الوظيفي بالإنجليزية</label>
                            {{Form::text('title_en','',['id'=>'title_en', 'class'=>'form-control'])}}
                        </div>

                        <div class="col-12 col-md-12">
                            <label class="form-label" for="image">الصورة</label>
                            {{Form::file('image',['id'=>'image', 'class'=>'form-control'])}}
                        </div>
                        <div class="col-12 text-center mt-2 pt-50">
                            <button type="submit" class="btn btn-primary me-1">حفظ التغييرات</button>
                            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
                                إالغاء
                            </button>
                        </div>
                    {{Form::close()}}
                </div>
            </div>
        </div>
    </div>
@stop
