import 'package:doctor/config/routes/app_navigation_manager.dart';
import 'package:doctor/config/screen_resizer.dart';
import 'package:doctor/core/components/Testimonials_component.dart';
import 'package:doctor/core/components/about_doctor_card_component.dart';
import 'package:doctor/core/components/certificates-doctor_component.dart';
import 'package:doctor/core/components/doctor_services_card_component.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:doctor/core/utils/app_strings.dart';
import 'package:doctor/core/utils/app_styles_util.dart';
import 'package:doctor/presentation/helpers/biography_screen_helper.dart';
import 'package:doctor/presentation/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BiographyScreen extends StatelessWidget {
  const BiographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenResizer.getScreenHeight(context),
        width: ScreenResizer.getScreenWidth(context),
        padding: EdgeInsets.symmetric(
          vertical: 5.h,
          horizontal: 30.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutDoctorCardComponent(
                widthContainer: double.maxFinite,
                heightContainer: 200.h,
                doctorName: "Dr.KARIM AGGOUR",
                doctorSpecialization: "Dermatologist",
                onClick: () {
                  AppNavigationManager.navPop(context);
                },
              ),
              20.verticalSpace,
              Material(
                elevation: 0.8,
                borderRadius: BorderRadius.circular(10.sp),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      BiographyScreenHelper.instance().doctorImgServices.length,
                      (index) {
                        return DoctorServicesCardComponent(
                          iconAsset: BiographyScreenHelper.instance()
                              .doctorImgServices[index],
                          title: BiographyScreenHelper.instance()
                              .doctorTitleServices[index],
                        );
                      },
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              Text(
                "About Doctor",
                style: AppStylesUtil.textBoldStyle(
                  16.sp,
                  AppColorUtil.iconsDarkGreen,
                  FontWeight.bold,
                ),
              ),
              10.verticalSpace,
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                child: Text(
                  doctorServiceDescription1,
                  style: AppStylesUtil.textBoldStyle(
                    11.sp,
                    AppColorUtil.textblackBold,
                    FontWeight.w400,
                  ),
                ),
              ),
              10.verticalSpace,
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                child: Text(
                  doctorServiceDescription2,
                  style: AppStylesUtil.textBoldStyle(
                    11.sp,
                    AppColorUtil.textblackBold,
                    FontWeight.w400,
                  ),
                ),
              ),
              20.verticalSpace,
              CertificateDoctorComponent(
                iconAssetCertificate1: AppAssetsUtil.certificateIcon1,
                iconAssetCertificate2: AppAssetsUtil.certificateIcon2,
                iconAssetCertificate3: AppAssetsUtil.certificateIcon3,
                title: "Certificates",
                discreption: doctorCertificationDescription,
                widthContainer: double.maxFinite,
                heightContainer: 300.h,
              ),
              20.verticalSpace,
              Container(
                height: 200.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssetsUtil.mapImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              20.verticalSpace,
              Text(
                "Testimonials",
                style: AppStylesUtil.textBoldStyle(
                  16.sp,
                  AppColorUtil.iconsDarkGreen,
                  FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 100,
                child: PageView.builder(
                  itemCount:
                      BiographyScreenHelper.instance().testimonialTitles.length,
                  itemBuilder: (context, index) {
                    return TestimonialsComponent(
                      widthContainer: double.maxFinite,
                      heightContainer: 200,
                      iconAsset: BiographyScreenHelper.instance()
                          .testimonialPhotos[index],
                      title: BiographyScreenHelper.instance()
                          .testimonialTitles[index],
                      discreption: BiographyScreenHelper.instance()
                          .testimonialDescriptions[index],
                    );
                  },
                ),
              ),
              40.verticalSpace,
              AppButtonWidget(
                onClick: () {},
                customChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    15.horizontalSpace,
                    Text(
                      AppLocalizations.of(context)!.book_an_appointment,
                      style: AppStylesUtil.textBoldStyle(
                        15.sp,
                        AppColorUtil.white,
                        FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColorUtil.backgroundLightGreen,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.sp,
                        color: AppColorUtil.white,
                      ),
                    )
                  ],
                ),
                btnBackgroundColor: AppColorUtil.iconsDarkGreen,
                btnSize: Size(double.maxFinite, 50.h),
                btnRadius: 15,
                width: double.maxFinite,
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
