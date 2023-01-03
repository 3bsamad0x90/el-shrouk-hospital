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
                                <th class="text-center">القسم</th>
                                {{-- <th class="text-center">الصورة</th> --}}
                                <th class="text-center">الإجراءات</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($media as $item)
                            <tr id="row_{{ $item->id }}">
                                    <td  class="text-center">
                                        {{$item->categoryName_ar}}<br>
                                        {{$item->categoryName_en}}
                                    </td>

                                    {{-- <td class="text-center">
                                        <img class="round border" src="{{$item->photoLink()}}" alt="avatar" width="100px">
                                    </td> --}}

                                    <td class="text-center">
                                        <a href="javascript:;" data-bs-target="#editImages{{$item->id}}" data-bs-toggle="modal" class="btn btn-icon btn-primary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="{{trans('common.images')}}">
                                            <i data-feather='camera'></i>
                                        </a>
                                        <a href="javascript:;" data-bs-target="#edititem{{$item->id}}" data-bs-toggle="modal" class="btn btn-icon btn-info" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="{{trans('common.edit')}}">
                                            <i data-feather='edit'></i>
                                        </a>
                                        <?php $delete = route('admin.media.delete',['id'=>$item->id]); ?>
                                        <button type="button" class="btn btn-icon btn-danger" onclick="confirmDelete('{{$delete}}','{{$item->id}}')" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="{{trans('common.delete')}}">
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
                    {{ $media->links('vendor.pagination.default') }}
                </div>
{{-- Edit Category Name --}}
                @foreach($media as $item)
                    <div class="modal fade text-md-start" id="edititem{{$item->id}}" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                            <div class="modal-content">
                                <div class="modal-header bg-transparent">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body pb-5 px-sm-5 pt-50">
                                    <div class="text-center mb-2">
                                        <h1 class="mb-1">تعديل إسم القسم</h1>
                                    </div>
                                    {{Form::open(['url'=>route('admin.media.update',['id'=>$item->id]), 'id'=>'edititemForm', 'class'=>'row gy-1 pt-75'])}}
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="categoryName_ar">الإسم بالعربية</label>
                                            {{Form::text('categoryName_ar',$item->categoryName_ar,['id'=>'categoryName_ar', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <label class="form-label" for="categoryName_en">الإسم بالإنجليزية</label>
                                            {{Form::text('categoryName_en',$item->categoryName_en,['id'=>'categoryName_en', 'class'=>'form-control'])}}
                                        </div>
                                        <div class="col-12 text-center mt-2 pt-50">
                                            <button type="submit" class="btn btn-primary me-1">حفظ التغييرات</button>
                                            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
                                                إلغاء
                                            </button>
                                        </div>
                                    {{Form::close()}}
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
{{-- Edit Images --}}
                @foreach($media as $item)
                    <div class="modal fade text-md-start" id="editImages{{$item->id}}" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                            <div class="modal-content">
                                <div class="modal-header bg-transparent">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body pb-5 px-sm-5 pt-50">
                                    <div class="text-center mb-2">
                                        <h1 class="mb-1">المعرض</h1>
                                    </div>
                                    {{Form::open(['url'=>route('admin.media.updateImages',['id'=>$item->id]), 'id'=>'edititemForm', 'class'=>'row gy-1 pt-75', 'files'=>true])}}

                                        @php
                                            $images = json_decode($item->images);
                                        @endphp
                                        <div class="user-image mb-3">
                                            @foreach ($images as $image)
                                                <img class="img-fluid rounded border-black mt-1" src="{{ asset('uploads/media/'.$item->id. '/' . $image) }}" alt="user avatar" height="90" width="90">
                                            @endforeach
                                        </div>
                                        <div class="col-12 col-md-12">
                                            <label class="form-label" for="images">تعديل الصور</label>
                                            {{Form::file('images[]',['id'=>'images', 'class'=>'form-control', 'multiple'=>true])}}
                                        </div>

                                        <div class="col-12 text-center mt-2 pt-50">
                                            <button type="submit" class="btn btn-primary me-1">حفظ التغييرات</button>
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
{{-- create item item --}}
@section('page_buttons')
    <a href="javascript:;" data-bs-target="#createitem" data-bs-toggle="modal" class="btn btn-primary">
        إضافة جديد
    </a>
    <div class="modal fade text-md-start" id="createitem" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
            <div class="modal-content">
                <div class="modal-header bg-transparent">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body pb-5 px-sm-5 pt-50">
                    <div class="text-center mb-2">
                        <h1 class="mb-1">إضافة جديد</h1>
                    </div>
                    {{Form::open(['url'=>route('admin.media.store'), 'id'=>'createitemForm', 'class'=>'row gy-1 pt-75', 'files'=>true])}}
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="categoryName_ar">إسم القسم بالعربية</label>
                            {{Form::text('categoryName_ar','',['id'=>'categoryName_ar', 'class'=>'form-control'])}}
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="categoryName_en">إسم القسم بالإنجليزية</label>
                            {{Form::text('categoryName_en','',['id'=>'categoryName_en', 'class'=>'form-control'])}}
                        </div>

                        <div class="col-12 col-md-12">
                            <label class="form-label" for="images">الصور</label>
                            {{Form::file('images[]',['id'=>'images', 'class'=>'form-control', 'multiple'=>true])}}
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
