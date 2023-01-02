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
                                <th class="text-center">العنوان</th>
                                <th class="text-center">الـوصـف</th>
                                <th class="text-center">الأيقونة</th>
                                <th class="text-center">الإجراءات</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($weCares as $weCare)
                            <tr id="row_{{ $weCare->id }}">
                                @if($weCare->status === 1 )
                                    <td  class="text-center">
                                        {{$weCare->title_ar}}<br>
                                        {{$weCare->title_en}}
                                    </td>
                                    <td class="text-center">
                                        {{$weCare->description_ar}}<br>
                                        {{$weCare->description_en}}
                                    </td>
                                    <td class="text-center">
                                        <img class="round border" src="{{$weCare->photoLink()}}" alt="avatar" width="50px">
                                    </td>
                                @else
                                    <td colspan="3" class="text-center">
                                        <h2>لا يوجد أي بيانات لعرضها الآن</h2>
                                    </td>
                                @endif
                                    <td class="text-center">
                                        <a href="javascript:;" data-bs-target="#editweCare{{$weCare->id}}" data-bs-toggle="modal" class="btn btn-icon btn-info" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="{{trans('common.edit')}}">
                                            @if($weCare->status === 1 )
                                                <i data-feather='edit'></i>
                                            @else
                                                <i data-feather='plus'></i>
                                            @endif
                                        </a>
                                        <?php $delete = route('admin.weCares.delete',['id'=>$weCare->id]); ?>
                                        <button type="button" class="btn btn-icon btn-danger" onclick="confirmDelete('{{$delete}}','{{$weCare->id}}')" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="{{trans('common.delete')}}">
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
{{-- Edit weCare --}}
                @foreach($weCares as $weCare)
                    <div class="modal fade text-md-start" id="editweCare{{$weCare->id}}" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                            <div class="modal-content">
                                <div class="modal-header bg-transparent">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body pb-5 px-sm-5 pt-50">
                                    <div class="text-center mb-2">
                                        <h1 class="mb-1">{{trans('common.edit')}}</h1>
                                    </div>
                                    {{Form::open(['url'=>route('admin.weCares.update',['id'=>$weCare->id]), 'id'=>'editweCareForm', 'class'=>'row gy-1 pt-75', 'files'=>true])}}
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="title_ar">العنوان بالعربية</label>
                                            {{Form::text('title_ar',$weCare->title_ar,['id'=>'title_ar', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="title_en">العنوان بالإنجليزية</label>
                                            {{Form::text('title_en',$weCare->title_en,['id'=>'title_en', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 col-md-12">
                                            <label class="form-label" for="description_ar">الوصف بالعربية</label>
                                            {{Form::textarea('description_ar',$weCare->description_ar,['id'=>'description_ar', 'class'=>'form-control editor_ar'])}}
                                        </div>
                                        <div class="col-12 col-md-12">
                                            <label class="form-label" for="description_en">الوصف بالإنجليزية</label>
                                            {{Form::textarea('description_en',$weCare->description_en,['id'=>'description_en', 'class'=>'form-control editor_en'])}}
                                        </div>

                                        <div class="col-12 col-md-12">
                                            <label class="form-label" for="icon">الأيقونة</label>
                                            {{Form::file('icon',['id'=>'icon', 'class'=>'form-control'])}}
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
{{-- create New weCare --}}
{{-- @section('page_buttons')
    <a href="javascript:;" data-bs-target="#createweCare" data-bs-toggle="modal" class="btn btn-primary">
        إضافة جديد
    </a>

    <div class="modal fade text-md-start" id="createweCare" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
            <div class="modal-content">
                <div class="modal-header bg-transparent">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body pb-5 px-sm-5 pt-50">
                    <div class="text-center mb-2">
                        <h1 class="mb-1">إضافة جديد</h1>
                    </div>
                    {{Form::open(['url'=>route('admin.weCares.store'), 'id'=>'createweCareForm', 'class'=>'row gy-1 pt-75', 'files'=>true])}}
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="title_ar">العنوان بالعربية</label>
                            {{Form::text('title_ar','',['id'=>'title_ar', 'class'=>'form-control'])}}
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="title_en">العنوان بالإنجليزية</label>
                            {{Form::text('title_en','',['id'=>'title_en', 'class'=>'form-control'])}}
                        </div>
                        <div class="col-12 col-md-12">
                            <label class="form-label" for="description_ar">الوصف بالعربية</label>
                            {{Form::textarea('description_ar','',['id'=>'description_ar', 'class'=>'form-control editor_ar'])}}
                        </div>
                        <div class="col-12 col-md-12">
                            <label class="form-label" for="description_en">الوصف بالإنجليزية</label>
                            {{Form::textarea('description_en','',['id'=>'description_en', 'class'=>'form-control editor_en'])}}
                        </div>

                        <div class="col-12 col-md-12">
                            <label class="form-label" for="icon">الأيقونة</label>
                            {{Form::file('icon',['id'=>'icon', 'class'=>'form-control'])}}
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
@stop --}}
