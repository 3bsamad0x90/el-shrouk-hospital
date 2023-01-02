<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row justify-content-center">
            <img src="{{asset('/AdminAssets/app-assets/images/logo/logo.png')}}" width="30%" />
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class="@if(isset($active) && $active == 'panelHome') active @endif nav-item" >
                <a class="d-flex align-items-center" href="{{route('admin.index')}}">
                    <i data-feather="home"></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.PanelHome')}}">
                        الرئيسية
                    </span>
                </a>
            </li>
            <li class="nav-item @if(isset($active) && $active == 'setting') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.settings.general')}}">
                    <i data-feather='settings'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.setting')}}">
                        الإعدادات
                    </span>
                </a>
            </li>
            <li class="nav-item @if(isset($active) && $active == 'services') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.services')}}">
                    <i data-feather='columns'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.services')}}">
                         الـخدمـات
                    </span>
                </a>
            </li>
            <li class="nav-item @if(isset($active) && $active == 'weCare') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.weCares')}}">
                    <i data-feather='heart'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.weCare')}}">
                        إهتمامنا
                    </span>
                </a>
            </li>
            <li class="nav-item @if(isset($active) && $active == 'ourTeam') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.ourTeam')}}">
                    <i data-feather='users'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.ourTeam')}}">
                        فريق العمل
                    </span>
                </a>
            </li>
            <li class="nav-item @if(isset($active) && $active == 'equipments') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.equipments')}}">
                    <i data-feather='tool'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.equipment')}}">
                        الأجهزة والأدوات
                    </span>
                </a>
            </li>
            <li class="nav-item @if(isset($active) && $active == 'news') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.news')}}">
                    <i data-feather='book-open'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.news')}}">
                        الأخبار و الأحداث
                    </span>
                </a>
            </li>
            <li class="nav-item @if(isset($active) && $active == 'media') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.media')}}">
                    <i data-feather='camera'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.media')}}">
                        المعرض والوسائط
                    </span>
                </a>
            </li>

            <li class="nav-item @if(isset($active) && $active == 'contactMessages') active @endif">
                <a class="d-flex align-items-center" href="{{route('admin.contactmessages')}}">
                    <i data-feather='mail'></i>
                    <span class="menu-title text-truncate" data-i18n="{{trans('common.contactMessages')}}">
                        رسائل اتصل بنا
                    </span>
                </a>
            </li>
        </ul>
    </div>
</div>
<!-- END: Main Menu-->
