{{-- Extends layout --}}
@extends('layout.default')


@section('styles')
{{--
<link rel="stylesheet" href="{{ asset('assets/plugins/global/plugins.bundle.css') }}"> --}}
@endsection


{{-- Content --}}
@section('content')
@if(!auth()->user()->hasRole('investor'))
<div class="col-md-12">
  <div class="row">
    <div class="col-lg-6 col-md-6 col-xs-4">
      <div class="card card-custom bg-gray-100 card-stretch gutter-b">
        <div class="kt_charts_widget_1_chart d-body p-0 position-relative overflow-hidden">
          <!--begin::Chart-->
          <div id="kt_mixed_widget_1_chart" class="card-rounded-bottom bg-danger"
            style="height: 200px; min-height: 200px;">
          </div>
          <div class="card-spacer mt-n25">
            <!--begin::Row-->
            <div class="row m-0">
              <div class="col bg-light-warning px-6 py-8 rounded-xl mr-7 mb-7">
                <span class="svg-icon svg-icon-3x svg-icon-warning d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Media/Equalizer.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <rect x="0" y="0" width="24" height="24"></rect>
                      <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5">
                      </rect>
                      <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                      <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                      <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-warning font-weight-bold font-size-h6">Weekly Sales</a>
              </div>
              <div class="col bg-light-primary px-6 py-8 rounded-xl mb-7">
                <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Add-user.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <polygon points="0 0 24 0 24 24 0 24"></polygon>
                      <path
                        d="M18,8 L16,8 C15.4477153,8 15,7.55228475 15,7 C15,6.44771525 15.4477153,6 16,6 L18,6 L18,4 C18,3.44771525 18.4477153,3 19,3 C19.5522847,3 20,3.44771525 20,4 L20,6 L22,6 C22.5522847,6 23,6.44771525 23,7 C23,7.55228475 22.5522847,8 22,8 L20,8 L20,10 C20,10.5522847 19.5522847,11 19,11 C18.4477153,11 18,10.5522847 18,10 L18,8 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z"
                        fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                      <path
                        d="M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z"
                        fill="#000000" fill-rule="nonzero"></path>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-primary font-weight-bold font-size-h6 mt-2">New Users</a>
              </div>
            </div>
            <!--end::Row-->
            <!--begin::Row-->
            <div class="row m-0">
              <div class="col bg-light-danger px-6 py-8 rounded-xl mr-7">
                <span class="svg-icon svg-icon-3x svg-icon-danger d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Design/Layers.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <polygon points="0 0 24 0 24 24 0 24"></polygon>
                      <path
                        d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z"
                        fill="#000000" fill-rule="nonzero"></path>
                      <path
                        d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z"
                        fill="#000000" opacity="0.3"></path>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-danger font-weight-bold font-size-h6 mt-2">Item Orders</a>
              </div>
              <div class="col bg-light-success px-6 py-8 rounded-xl">
                <span class="svg-icon svg-icon-3x svg-icon-success d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Urgent-mail.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <rect x="0" y="0" width="24" height="24"></rect>
                      <path
                        d="M12.7037037,14 L15.6666667,10 L13.4444444,10 L13.4444444,6 L9,12 L11.2222222,12 L11.2222222,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L12.7037037,14 Z"
                        fill="#000000" opacity="0.3"></path>
                      <path
                        d="M9.80428954,10.9142091 L9,12 L11.2222222,12 L11.2222222,16 L15.6666667,10 L15.4615385,10 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9.80428954,10.9142091 Z"
                        fill="#000000"></path>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-success font-weight-bold font-size-h6 mt-2">Bug Reports</a>
              </div>
            </div>
            <!--end::Row-->
          </div>
          <!--end::Stats-->

        </div>
        <!--end::Body-->
      </div>
    </div>
    <div class="col-lg-6 col-md-6 col-xs-4">
      <div class="card card-custom bg-gray-100 card-stretch gutter-b">
        <div class="card-body p-0 position-relative overflow-hidden">
          <!--begin::Chart-->
          <div id="kt_mixed_widget_5_chart" class="card-rounded-bottom bg-success"
            style="height: 200px; min-height: 200px;">
          </div>
          <div class="card-spacer mt-n25">
            <!--begin::Row-->
            <div class="row m-0">
              <div class="col bg-light-warning px-6 py-8 rounded-xl mr-7 mb-7">
                <span class="svg-icon svg-icon-3x svg-icon-warning d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Media/Equalizer.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <rect x="0" y="0" width="24" height="24"></rect>
                      <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5">
                      </rect>
                      <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                      <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                      <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-warning font-weight-bold font-size-h6">Weekly Sales</a>
              </div>
              <div class="col bg-light-primary px-6 py-8 rounded-xl mb-7">
                <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Add-user.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <polygon points="0 0 24 0 24 24 0 24"></polygon>
                      <path
                        d="M18,8 L16,8 C15.4477153,8 15,7.55228475 15,7 C15,6.44771525 15.4477153,6 16,6 L18,6 L18,4 C18,3.44771525 18.4477153,3 19,3 C19.5522847,3 20,3.44771525 20,4 L20,6 L22,6 C22.5522847,6 23,6.44771525 23,7 C23,7.55228475 22.5522847,8 22,8 L20,8 L20,10 C20,10.5522847 19.5522847,11 19,11 C18.4477153,11 18,10.5522847 18,10 L18,8 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z"
                        fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                      <path
                        d="M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z"
                        fill="#000000" fill-rule="nonzero"></path>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-primary font-weight-bold font-size-h6 mt-2">New Users</a>
              </div>
            </div>
            <!--end::Row-->
            <!--begin::Row-->
            <div class="row m-0">
              <div class="col bg-light-danger px-6 py-8 rounded-xl mr-7">
                <span class="svg-icon svg-icon-3x svg-icon-danger d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Design/Layers.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <polygon points="0 0 24 0 24 24 0 24"></polygon>
                      <path
                        d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z"
                        fill="#000000" fill-rule="nonzero"></path>
                      <path
                        d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z"
                        fill="#000000" opacity="0.3"></path>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-danger font-weight-bold font-size-h6 mt-2">Item Orders</a>
              </div>
              <div class="col bg-light-success px-6 py-8 rounded-xl">
                <span class="svg-icon svg-icon-3x svg-icon-success d-block my-2">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Communication/Urgent-mail.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <rect x="0" y="0" width="24" height="24"></rect>
                      <path
                        d="M12.7037037,14 L15.6666667,10 L13.4444444,10 L13.4444444,6 L9,12 L11.2222222,12 L11.2222222,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L12.7037037,14 Z"
                        fill="#000000" opacity="0.3"></path>
                      <path
                        d="M9.80428954,10.9142091 L9,12 L11.2222222,12 L11.2222222,16 L15.6666667,10 L15.4615385,10 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9.80428954,10.9142091 Z"
                        fill="#000000"></path>
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
                <a href="#" class="text-success font-weight-bold font-size-h6 mt-2">Bug Reports</a>
              </div>
            </div>
            <!--end::Row-->
          </div>
          <!--end::Stats-->

        </div>
        <!--end::Body-->
      </div>
    </div>
    <div class="col-lg-6 col-md-6 col-xs-4">
      <div class="card-body p-0">
        <div class="card card-custom card-stretch card-stretch-half gutter-b">
          <div class="d-flex align-items-center justify-content-between card-spacer flex-grow-1">
            <span class="symbol symbol-50 symbol-light-warning mr-2">
              <span class="symbol-label">
                <span class="svg-icon svg-icon-xl svg-icon-warning">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Layout/Layout-4-blocks.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <rect x="0" y="0" width="24" height="24" />
                      <rect fill="#000000" x="4" y="4" width="7" height="7" rx="1.5" />
                      <path
                        d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z"
                        fill="#000000" opacity="0.3" />
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
              </span>
            </span>
            <div class="d-flex flex-column text-right">
              <span class="text-dark-75 font-weight-bolder font-size-h3"><span id="totalMonthlySales"></span>৳</span>
              <span class="text-muted font-weight-bold mt-2">Last Month Sales :
                <span class="badge badge-primary">
                  {{\Carbon\Carbon::parse($lastMonth)->format('M')}}
                </span>
              </span>
            </div>
          </div>
          <div id="kt_stats_widget_11_chart" class="card-rounded-bottom" data-color="warning" style="height: 150px">
          </div>
        </div>
      </div>
      <!--end::Body-->
    </div>
    <div class="col-lg-6 col-md-6 col-xs-4">
      <!--begin::Body-->
      <div class="card-body p-0">
        <div class="card card-custom card-stretch card-stretch-half gutter-b">
          <div class="d-flex align-items-center justify-content-between card-spacer flex-grow-1">
            <span class="symbol symbol-50 symbol-light-success mr-2">
              <span class="symbol-label">
                <span class="svg-icon svg-icon-xl svg-icon-success">
                  <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Layout/Layout-4-blocks.svg-->
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                    height="24px" viewBox="0 0 24 24" version="1.1">
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <rect x="0" y="0" width="24" height="24" />
                      <rect fill="#000000" x="4" y="4" width="7" height="7" rx="1.5" />
                      <path
                        d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z"
                        fill="#000000" opacity="0.3" />
                    </g>
                  </svg>
                  <!--end::Svg Icon-->
                </span>
              </span>
            </span>
            <div class="d-flex flex-column text-right">
              <span class="text-dark-75 font-weight-bolder font-size-h3"><span
                  id="totalPresentMonthlySales"></span>৳</span>
              <span class="text-muted font-weight-bold mt-2">This Month Sales: Jan</span>
            </div>
          </div>
          <div id="kt_stats_widget_12_chart" class="card-rounded-bottom" data-color="success" style="height: 150px">
          </div>
        </div>
      </div>
      <!--end::Body-->
    </div>
    {{-- <div class="col-lg-6 col-md-6 col-xs-4">
      <!--begin::Body-->
      <!--begin::Charts Widget 1-->
      <div class="card card-custom card-stretch gutter-b">
        <!--begin::Header-->
        <div class="card-header h-auto border-0">
          <!--begin::Title-->
          <div class="card-title py-5">
            <h3 class="card-label">
              <span class="d-block text-dark font-weight-bolder">Recent Stats</span>
              <span class="d-block text-muted mt-2 font-size-sm">More than 400+ new members</span>
            </h3>
          </div>
          <!--end::Title-->
          <!--begin::Toolbar-->
          <div class="card-toolbar">
            <div class="dropdown dropdown-inline">
              <a href="#" class="btn btn-clean btn-hover-light-primary btn-sm btn-icon" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="ki ki-bold-more-hor"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
                <!--begin::Naviigation-->
                <ul class="navi">
                  <li class="navi-header font-weight-bold py-5">
                    <span class="font-size-lg">Add New:</span>
                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right"
                      title="Click to learn more..."></i>
                  </li>
                  <li class="navi-separator mb-3 opacity-70"></li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="flaticon2-shopping-cart-1"></i>
                      </span>
                      <span class="navi-text">Order</span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-calendar-8"></i>
                      </span>
                      <span class="navi-text">Members</span>
                      <span class="navi-label">
                        <span class="label label-light-danger label-rounded font-weight-bold">3</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-telegram-logo"></i>
                      </span>
                      <span class="navi-text">Project</span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-new-email"></i>
                      </span>
                      <span class="navi-text">Record</span>
                      <span class="navi-label">
                        <span class="label label-light-success label-rounded font-weight-bold">5</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-separator mt-3 opacity-70"></li>
                  <li class="navi-footer pt-5 pb-4">
                    <a class="btn btn-light-primary font-weight-bolder btn-sm" href="#">More options</a>
                    <a class="btn btn-clean font-weight-bold btn-sm d-none" href="#" data-toggle="tooltip"
                      data-placement="right" title="Click to learn more...">Learn more</a>
                  </li>
                </ul>
                <!--end::Naviigation-->
              </div>
            </div>
          </div>
          <!--end::Toolbar-->
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body">
          <!--begin::Chart-->
          <div id="kt_charts_widget_1_chart"></div>
          <!--end::Chart-->
        </div>
        <!--end::Body-->
      </div>
      <!--end::Charts Widget 1-->
      <!--end::Body-->
    </div> --}}
    {{-- <div class="col-lg-6 col-md-6 col-xs-4">
      <!--begin::Body-->
      <!--begin::Charts Widget 1-->
      <div class="card card-custom bg-gray-100 card-stretch gutter-b">
        <!--begin::Header-->
        <div class="card-header h-auto border-0">
          <!--begin::Title-->
          <div class="card-title py-5">
            <h3 class="card-label">
              <span class="d-block text-dark font-weight-bolder">Recent Orders</span>
              <span class="d-block text-dark-50 mt-2 font-size-sm">More than 500+ new orders</span>
            </h3>
          </div>
          <!--end::Title-->
          <!--begin::Toolbar-->
          <div class="card-toolbar">
            <ul class="nav nav-pills nav-pills-sm nav-dark-75" role="tablist">
              <li class="nav-item">
                <a class="nav-link py-2 px-4" data-toggle="tab" href="#kt_charts_widget_2_chart_tab_1">
                  <span class="nav-text font-size-sm">Month</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link py-2 px-4" data-toggle="tab" href="#kt_charts_widget_2_chart_tab_2">
                  <span class="nav-text font-size-sm">Week</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link py-2 px-4 active" data-toggle="tab" href="#kt_charts_widget_2_chart_tab_3">
                  <span class="nav-text font-size-sm">Day</span>
                </a>
              </li>
            </ul>
          </div>
          <!--end::Toolbar-->
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body">
          <!--begin::Chart-->
          <div id="kt_charts_widget_2_chart"></div>
          <!--end::Chart-->
        </div>
        <!--end::Body-->
      </div>
      <!--end::Charts Widget 2-->
      <!--end::Charts Widget 1-->
      <!--end::Body-->
    </div> --}}
    <div class="col-lg-6 col-md-6 col-xs-4">
      <!--begin::Body-->
      <div class="card card-custom card-stretch gutter-b">
        <!--begin::Header-->
        <div class="card-header h-auto border-0">
          <div class="card-title py-5">
            <h3 class="card-label">
              <span class="d-block text-dark font-weight-bolder">CRR</span>
              <span class="d-block text-muted mt-2 font-size-sm"></span>
            </h3>
          </div>
          <div class="card-toolbar">
            <div class="dropdown dropdown-inline">
              <a href="#" class="btn btn-clean btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <i class="ki ki-bold-more-hor"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-md dropdown-menu-right pb-5">
                <!--begin::Naviigation-->
                <ul class="navi">
                  <li class="navi-item">
                    <span class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-calendar-8"></i>
                      </span>
                      <span class="navi-text" for="startMonthAndYearCRR">Start Month And Year</span>
                    </span>
                    <span class="navi-link">
                      <input type="month" id="startMonthAndYearCRR" name="startMonthAndYearCRR">
                    </span>
                  </li>
                  <li class="navi-item">
                    <span class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-calendar-8"></i>
                      </span>
                      <span class="navi-text" for="endMonthAndYearCRR">End Month And Year</span>
                    </span>
                    <span class="navi-link">
                      <input type="month" id="endMonthAndYearCRR" name="endMonthAndYearCRR">
                    </span>
                  </li>

                </ul>
                <!--end::Naviigation-->
              </div>
            </div>
          </div>
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body">
          <div id="kt_charts_widget_3_chart"></div>
        </div>
        <!--end::Body-->
      </div>
      <!--end::Body-->
    </div>
    <div class="col-lg-6 col-md-6 col-xs-4">
      <!--begin::Body-->
      <div class="card card-custom card-stretch gutter-b">
        <!--begin::Header-->
        <div class="card-header h-auto border-0">
          <div class="card-title py-5">
            <h3 class="card-label">
              <span class="d-block text-dark font-weight-bolder">Recent Orders</span>
              <span class="d-block text-muted mt-2 font-size-sm">More than 500+ new orders</span>
            </h3>
          </div>
          <div class="card-toolbar">
            <ul class="nav nav-pills nav-pills-sm nav-dark-75" role="tablist">
              <li class="nav-item">
                <a class="nav-link py-2 px-4" data-toggle="tab" href="#kt_charts_widget_2_chart_tab_1">
                  <span class="nav-text font-size-sm">Month</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link py-2 px-4" data-toggle="tab" href="#kt_charts_widget_2_chart_tab_2">
                  <span class="nav-text font-size-sm">Week</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link py-2 px-4 active" data-toggle="tab" href="#kt_charts_widget_2_chart_tab_3">
                  <span class="nav-text font-size-sm">Day</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body">
          <div id="kt_charts_widget_4_chart"></div>
        </div>
        <!--end::Body-->
      </div>
      <!--end::Body-->
    </div>
  </div>
  <!--end::Row-->
  <!--begin::Row-->
  <div class="row">
    <div class="col-xl-4">
      <!--begin::Mixed Widget 16-->
      <div class="card card-custom gutter-b card-stretch">
        <!--begin::Header-->
        <div class="card-header border-0 pt-5">
          <div class="card-title">
            <div class="card-label">
              <div class="font-weight-bolder">Weekly Sales Stats</div>
              <div class="font-size-sm text-muted mt-2">890,344 Sales</div>
            </div>
          </div>
          <div class="card-toolbar">
            <div class="dropdown dropdown-inline">
              <a href="#" class="btn btn-clean btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <i class="ki ki-bold-more-hor"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
                <!--begin::Navigation-->
                <ul class="navi navi-hover">
                  <li class="navi-header font-weight-bold py-4">
                    <span class="font-size-lg">Choose Label:</span>
                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right"
                      title="Click to learn more..."></i>
                  </li>
                  <li class="navi-separator mb-3 opacity-70"></li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-success">Customer</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-danger">Partner</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-warning">Suplier</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-primary">Member</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-dark">Staff</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-separator mt-3 opacity-70"></li>
                  <li class="navi-footer py-4">
                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                      <i class="ki ki-plus icon-sm"></i>Add new</a>
                  </li>
                </ul>
                <!--end::Navigation-->
              </div>
            </div>
          </div>
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body d-flex flex-column">
          <!--begin::Chart-->
          <div class="flex-grow-1">
            <div id="kt_mixed_widget_16_chart" style="height: 200px"></div>
          </div>
          <!--end::Chart-->
          <!--begin::Items-->
          <div class="mt-10 mb-5">
            <div class="row row-paddingless mb-10">
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-info mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-info">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Shopping/Cart3.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <path
                              d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z"
                              fill="#000000" fill-rule="nonzero" opacity="0.3" />
                            <path
                              d="M3.5,9 L20.5,9 C21.0522847,9 21.5,9.44771525 21.5,10 C21.5,10.132026 21.4738562,10.2627452 21.4230769,10.3846154 L17.7692308,19.1538462 C17.3034221,20.271787 16.2111026,21 15,21 L9,21 C7.78889745,21 6.6965779,20.271787 6.23076923,19.1538462 L2.57692308,10.3846154 C2.36450587,9.87481408 2.60558331,9.28934029 3.11538462,9.07692308 C3.23725479,9.02614384 3.36797398,9 3.5,9 Z M12,17 C13.1045695,17 14,16.1045695 14,15 C14,13.8954305 13.1045695,13 12,13 C10.8954305,13 10,13.8954305 10,15 C10,16.1045695 10.8954305,17 12,17 Z"
                              fill="#000000" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$2,034</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">Author Sales</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Item-->
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-danger mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-danger">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Home/Library.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <path
                              d="M5,3 L6,3 C6.55228475,3 7,3.44771525 7,4 L7,20 C7,20.5522847 6.55228475,21 6,21 L5,21 C4.44771525,21 4,20.5522847 4,20 L4,4 C4,3.44771525 4.44771525,3 5,3 Z M10,3 L11,3 C11.5522847,3 12,3.44771525 12,4 L12,20 C12,20.5522847 11.5522847,21 11,21 L10,21 C9.44771525,21 9,20.5522847 9,20 L9,4 C9,3.44771525 9.44771525,3 10,3 Z"
                              fill="#000000" />
                            <rect fill="#000000" opacity="0.3"
                              transform="translate(17.825568, 11.945519) rotate(-19.000000) translate(-17.825568, -11.945519)"
                              x="16.3255682" y="2.94551858" width="3" height="18" rx="1" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$706</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">Commission</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Item-->
            </div>
            <div class="row row-paddingless">
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-success mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-success">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Shopping/Cart3.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <path
                              d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z"
                              fill="#000000" fill-rule="nonzero" opacity="0.3" />
                            <path
                              d="M3.5,9 L20.5,9 C21.0522847,9 21.5,9.44771525 21.5,10 C21.5,10.132026 21.4738562,10.2627452 21.4230769,10.3846154 L17.7692308,19.1538462 C17.3034221,20.271787 16.2111026,21 15,21 L9,21 C7.78889745,21 6.6965779,20.271787 6.23076923,19.1538462 L2.57692308,10.3846154 C2.36450587,9.87481408 2.60558331,9.28934029 3.11538462,9.07692308 C3.23725479,9.02614384 3.36797398,9 3.5,9 Z M12,17 C13.1045695,17 14,16.1045695 14,15 C14,13.8954305 13.1045695,13 12,13 C10.8954305,13 10,13.8954305 10,15 C10,16.1045695 10.8954305,17 12,17 Z"
                              fill="#000000" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$49</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">Average Bid</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Item-->
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-primary mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-primary">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Shopping/Barcode-read.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <rect fill="#000000" opacity="0.3" x="4" y="4" width="8" height="16" />
                            <path
                              d="M6,18 L9,18 C9.66666667,18.1143819 10,18.4477153 10,19 C10,19.5522847 9.66666667,19.8856181 9,20 L4,20 L4,15 C4,14.3333333 4.33333333,14 5,14 C5.66666667,14 6,14.3333333 6,15 L6,18 Z M18,18 L18,15 C18.1143819,14.3333333 18.4477153,14 19,14 C19.5522847,14 19.8856181,14.3333333 20,15 L20,20 L15,20 C14.3333333,20 14,19.6666667 14,19 C14,18.3333333 14.3333333,18 15,18 L18,18 Z M18,6 L15,6 C14.3333333,5.88561808 14,5.55228475 14,5 C14,4.44771525 14.3333333,4.11438192 15,4 L20,4 L20,9 C20,9.66666667 19.6666667,10 19,10 C18.3333333,10 18,9.66666667 18,9 L18,6 Z M6,6 L6,9 C5.88561808,9.66666667 5.55228475,10 5,10 C4.44771525,10 4.11438192,9.66666667 4,9 L4,4 L9,4 C9.66666667,4 10,4.33333333 10,5 C10,5.66666667 9.66666667,6 9,6 L6,6 Z"
                              fill="#000000" fill-rule="nonzero" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$5.8M</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">All Time Sales</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Item-->
            </div>
          </div>
          <!--end::Items-->
        </div>
        <!--end::Body-->
      </div>
      <!--end::Mixed Widget 16-->
    </div>
    <div class="col-xl-4">
      <!--begin::Mixed Widget 17-->
      <div class="card card-custom gutter-b card-stretch">
        <!--begin::Header-->
        <div class="card-header border-0 pt-5">
          <div class="card-title font-weight-bolder">
            <div class="card-label">Weekly Sales Stats
              <div class="font-size-sm text-muted mt-2">890,344 Sales</div>
            </div>
          </div>
          <div class="card-toolbar">
            <div class="dropdown dropdown-inline">
              <a href="#" class="btn btn-clean btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <i class="ki ki-bold-more-hor"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
                <!--begin::Naviigation-->
                <ul class="navi">
                  <li class="navi-header font-weight-bold py-5">
                    <span class="font-size-lg">Add New:</span>
                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right"
                      title="Click to learn more..."></i>
                  </li>
                  <li class="navi-separator mb-3 opacity-70"></li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="flaticon2-shopping-cart-1"></i>
                      </span>
                      <span class="navi-text">Order</span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-calendar-8"></i>
                      </span>
                      <span class="navi-text">Members</span>
                      <span class="navi-label">
                        <span class="label label-light-danger label-rounded font-weight-bold">3</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-telegram-logo"></i>
                      </span>
                      <span class="navi-text">Project</span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-icon">
                        <i class="navi-icon flaticon2-new-email"></i>
                      </span>
                      <span class="navi-text">Record</span>
                      <span class="navi-label">
                        <span class="label label-light-success label-rounded font-weight-bold">5</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-separator mt-3 opacity-70"></li>
                  <li class="navi-footer pt-5 pb-4">
                    <a class="btn btn-light-primary font-weight-bolder btn-sm" href="#">More options</a>
                    <a class="btn btn-clean font-weight-bold btn-sm d-none" href="#" data-toggle="tooltip"
                      data-placement="right" title="Click to learn more...">Learn more</a>
                  </li>
                </ul>
                <!--end::Naviigation-->
              </div>
            </div>
          </div>
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body p-0 d-flex flex-column">
          <!--begin::Items-->
          <div class="flex-grow-1 card-spacer">
            <div class="row row-paddingless mt-5 mb-10">
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-info mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-info">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Shopping/Cart3.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <path
                              d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z"
                              fill="#000000" fill-rule="nonzero" opacity="0.3" />
                            <path
                              d="M3.5,9 L20.5,9 C21.0522847,9 21.5,9.44771525 21.5,10 C21.5,10.132026 21.4738562,10.2627452 21.4230769,10.3846154 L17.7692308,19.1538462 C17.3034221,20.271787 16.2111026,21 15,21 L9,21 C7.78889745,21 6.6965779,20.271787 6.23076923,19.1538462 L2.57692308,10.3846154 C2.36450587,9.87481408 2.60558331,9.28934029 3.11538462,9.07692308 C3.23725479,9.02614384 3.36797398,9 3.5,9 Z M12,17 C13.1045695,17 14,16.1045695 14,15 C14,13.8954305 13.1045695,13 12,13 C10.8954305,13 10,13.8954305 10,15 C10,16.1045695 10.8954305,17 12,17 Z"
                              fill="#000000" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$2,034</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">Author Sales</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Item-->
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-danger mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-danger">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Home/Library.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <path
                              d="M5,3 L6,3 C6.55228475,3 7,3.44771525 7,4 L7,20 C7,20.5522847 6.55228475,21 6,21 L5,21 C4.44771525,21 4,20.5522847 4,20 L4,4 C4,3.44771525 4.44771525,3 5,3 Z M10,3 L11,3 C11.5522847,3 12,3.44771525 12,4 L12,20 C12,20.5522847 11.5522847,21 11,21 L10,21 C9.44771525,21 9,20.5522847 9,20 L9,4 C9,3.44771525 9.44771525,3 10,3 Z"
                              fill="#000000" />
                            <rect fill="#000000" opacity="0.3"
                              transform="translate(17.825568, 11.945519) rotate(-19.000000) translate(-17.825568, -11.945519)"
                              x="16.3255682" y="2.94551858" width="3" height="18" rx="1" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$706</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">Commision</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Widget Item-->
            </div>
            <div class="row row-paddingless">
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-success mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-success">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Shopping/Cart3.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <path
                              d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z"
                              fill="#000000" fill-rule="nonzero" opacity="0.3" />
                            <path
                              d="M3.5,9 L20.5,9 C21.0522847,9 21.5,9.44771525 21.5,10 C21.5,10.132026 21.4738562,10.2627452 21.4230769,10.3846154 L17.7692308,19.1538462 C17.3034221,20.271787 16.2111026,21 15,21 L9,21 C7.78889745,21 6.6965779,20.271787 6.23076923,19.1538462 L2.57692308,10.3846154 C2.36450587,9.87481408 2.60558331,9.28934029 3.11538462,9.07692308 C3.23725479,9.02614384 3.36797398,9 3.5,9 Z M12,17 C13.1045695,17 14,16.1045695 14,15 C14,13.8954305 13.1045695,13 12,13 C10.8954305,13 10,13.8954305 10,15 C10,16.1045695 10.8954305,17 12,17 Z"
                              fill="#000000" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$49</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">Average Bid</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Item-->
              <!--begin::Item-->
              <div class="col">
                <div class="d-flex align-items-center mr-2">
                  <!--begin::Symbol-->
                  <div class="symbol symbol-45 symbol-light-primary mr-4 flex-shrink-0">
                    <div class="symbol-label">
                      <span class="svg-icon svg-icon-lg svg-icon-primary">
                        <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Shopping/Barcode-read.svg-->
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                          height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <rect x="0" y="0" width="24" height="24" />
                            <rect fill="#000000" opacity="0.3" x="4" y="4" width="8" height="16" />
                            <path
                              d="M6,18 L9,18 C9.66666667,18.1143819 10,18.4477153 10,19 C10,19.5522847 9.66666667,19.8856181 9,20 L4,20 L4,15 C4,14.3333333 4.33333333,14 5,14 C5.66666667,14 6,14.3333333 6,15 L6,18 Z M18,18 L18,15 C18.1143819,14.3333333 18.4477153,14 19,14 C19.5522847,14 19.8856181,14.3333333 20,15 L20,20 L15,20 C14.3333333,20 14,19.6666667 14,19 C14,18.3333333 14.3333333,18 15,18 L18,18 Z M18,6 L15,6 C14.3333333,5.88561808 14,5.55228475 14,5 C14,4.44771525 14.3333333,4.11438192 15,4 L20,4 L20,9 C20,9.66666667 19.6666667,10 19,10 C18.3333333,10 18,9.66666667 18,9 L18,6 Z M6,6 L6,9 C5.88561808,9.66666667 5.55228475,10 5,10 C4.44771525,10 4.11438192,9.66666667 4,9 L4,4 L9,4 C9.66666667,4 10,4.33333333 10,5 C10,5.66666667 9.66666667,6 9,6 L6,6 Z"
                              fill="#000000" fill-rule="nonzero" />
                          </g>
                        </svg>
                        <!--end::Svg Icon-->
                      </span>
                    </div>
                  </div>
                  <!--end::Symbol-->
                  <!--begin::Title-->
                  <div>
                    <div class="font-size-h4 text-dark-75 font-weight-bolder">$5.8M</div>
                    <div class="font-size-sm text-muted font-weight-bold mt-1">All Time Sales</div>
                  </div>
                  <!--end::Title-->
                </div>
              </div>
              <!--end::Item-->
            </div>
          </div>
          <!--end::Items-->
          <!--begin::Chart-->
          <div id="kt_mixed_widget_17_chart" class="card-rounded-bottom" data-color="warning" style="height: 200px">
          </div>
          <!--end::Chart-->
        </div>
        <!--end::Body-->
      </div>
      <!--end::Mixed Widget 17-->
    </div>
    <div class="col-xl-4">
      <!--begin::Mixed Widget 18-->
      <div class="card card-custom gutter-b card-stretch">
        <!--begin::Header-->
        <div class="card-header border-0 pt-5">
          <div class="card-title font-weight-bolder">
            <div class="card-label">Weekly Sales Stats
              <div class="font-size-sm text-muted mt-2">890,344 Sales</div>
            </div>
          </div>
          <div class="card-toolbar">
            <div class="dropdown dropdown-inline">
              <a href="#" class="btn btn-clean btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <i class="ki ki-bold-more-hor"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
                <!--begin::Navigation-->
                <ul class="navi navi-hover">
                  <li class="navi-header font-weight-bold py-4">
                    <span class="font-size-lg">Choose Label:</span>
                    <i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right"
                      title="Click to learn more..."></i>
                  </li>
                  <li class="navi-separator mb-3 opacity-70"></li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-success">Customer</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-danger">Partner</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-warning">Suplier</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-primary">Member</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-item">
                    <a href="#" class="navi-link">
                      <span class="navi-text">
                        <span class="label label-xl label-inline label-light-dark">Staff</span>
                      </span>
                    </a>
                  </li>
                  <li class="navi-separator mt-3 opacity-70"></li>
                  <li class="navi-footer py-4">
                    <a class="btn btn-clean font-weight-bold btn-sm" href="#">
                      <i class="ki ki-plus icon-sm"></i>Add new</a>
                  </li>
                </ul>
                <!--end::Navigation-->
              </div>
            </div>
          </div>
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body">
          <!--begin::Chart-->
          <div id="kt_mixed_widget_18_chart" style="height: 250px"></div>
          <!--end::Chart-->
          <!--begin::Items-->
          <div class="mt-n12 position-relative zindex-0">
            <!--begin::Widget Item-->
            <div class="d-flex align-items-center mb-8">
              <!--begin::Symbol-->
              <div class="symbol symbol-circle symbol-40 symbol-light mr-3 flex-shrink-0">
                <div class="symbol-label">
                  <span class="svg-icon svg-icon-lg svg-icon-gray-500">
                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Media/Equalizer.svg-->
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                      height="24px" viewBox="0 0 24 24" version="1.1">
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <rect x="0" y="0" width="24" height="24" />
                        <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5" />
                        <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5" />
                        <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5" />
                        <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5" />
                      </g>
                    </svg>
                    <!--end::Svg Icon-->
                  </span>
                </div>
              </div>
              <!--end::Symbol-->
              <!--begin::Title-->
              <div>
                <a href="#" class="font-size-h6 text-dark-75 text-hover-primary font-weight-bolder">Most Sales</a>
                <div class="font-size-sm text-muted font-weight-bold mt-1">Authors with the best sales</div>
              </div>
              <!--end::Title-->
            </div>
            <!--end::Widget Item-->
            <!--begin::Widget Item-->
            <div class="d-flex align-items-center mb-8">
              <!--begin::Symbol-->
              <div class="symbol symbol-circle symbol-40 symbol-light mr-3 flex-shrink-0">
                <div class="symbol-label">
                  <span class="svg-icon svg-icon-lg svg-icon-gray-500">
                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Shopping/Chart-pie.svg-->
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                      height="24px" viewBox="0 0 24 24" version="1.1">
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <rect x="0" y="0" width="24" height="24" />
                        <path
                          d="M4.00246329,12.2004927 L13,14 L13,4.06189375 C16.9463116,4.55399184 20,7.92038235 20,12 C20,16.418278 16.418278,20 12,20 C7.64874861,20 4.10886412,16.5261253 4.00246329,12.2004927 Z"
                          fill="#000000" opacity="0.3" />
                        <path
                          d="M3.0603968,10.0120794 C3.54712466,6.05992157 6.91622084,3 11,3 L11,11.6 L3.0603968,10.0120794 Z"
                          fill="#000000" />
                      </g>
                    </svg>
                    <!--end::Svg Icon-->
                  </span>
                </div>
              </div>
              <!--end::Symbol-->
              <!--begin::Title-->
              <div>
                <a href="#" class="font-size-h6 text-dark-75 text-hover-primary font-weight-bolder">Total Sales Lead</a>
                <div class="font-size-sm text-muted font-weight-bold mt-1">40% increased on week-to-week reports</div>
              </div>
              <!--end::Title-->
            </div>
            <!--end::Widget Item-->
            <!--begin::Widget Item-->
            <div class="d-flex align-items-center">
              <!--begin::Symbol-->
              <div class="symbol symbol-circle symbol-40 symbol-light mr-3 flex-shrink-0">
                <div class="symbol-label">
                  <span class="svg-icon svg-icon-lg svg-icon-gray-500">
                    <!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Design/Layers.svg-->
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                      height="24px" viewBox="0 0 24 24" version="1.1">
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <polygon points="0 0 24 0 24 24 0 24" />
                        <path
                          d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z"
                          fill="#000000" fill-rule="nonzero" />
                        <path
                          d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z"
                          fill="#000000" opacity="0.3" />
                      </g>
                    </svg>
                    <!--end::Svg Icon-->
                  </span>
                </div>
              </div>
              <!--end::Symbol-->
              <!--begin::Title-->
              <div>
                <a href="#" class="font-size-h6 text-dark-75 text-hover-primary font-weight-bolder">Average
                  Bestseller</a>
                <div class="font-size-sm text-muted font-weight-bold mt-1">Pitstop Email Marketing</div>
              </div>
              <!--end::Title-->
            </div>
            <!--end::Widget Item-->
          </div>
          <!--end::Items-->
        </div>
        <!--end::Body-->
      </div>
      <!--end::Mixed Widget 18-->
    </div>
    <!--end::Row-->
  </div>
</div>
@endif
@endsection

{{-- Scripts Section --}}
@section('scripts')
<script src="{{ asset('js/pages/widgets.js') }}" type="text/javascript"></script>
{{-- <script src="{{ asset('assets/plugins/global/plugins.bundle.js') }}" type="text/javascript"></script> --}}

<script>
  $(document).ready(function(){
    let totalMonthlySales = "4,14,62,576.18";
    let totalPresentMonthlySales = "1,57,94,182.90";
    $('#totalMonthlySales').html(totalMonthlySales);
    $('#totalPresentMonthlySales').html(totalPresentMonthlySales);
    previousSalesPrice();
   
  });
  function previousSalesPrice(){
    $(document).on('change','#startMonthAndYearCRR', function(){
      let startValue = $(this).val();
      let endvalue = $('#endMonthAndYearCRR').val();
      console.log(startValue,endvalue);
    });
    $(document).on('change','#endMonthAndYearCRR', function(){
      let startValue = $('#startMonthAndYearCRR').val();
      let endvalue = $(this).val();
      console.log(startValue,endvalue);
      axios.post('/sales/date/getDateBasedCRR',{
        startValue:startValue,
        endValue:endvalue
      }).then(function(response){
        console.log(response.data.data);
      })
    });

  }


</script>

@endsection