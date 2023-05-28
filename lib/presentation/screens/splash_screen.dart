import 'package:doctor/core/components/identity_verification_done_card.dart';
import 'package:doctor/core/components/visit_type_card_component.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/components/Testimonials_component.dart';
import '../../core/components/about_doctor_card_component.dart';
import '../../core/components/branch_location_component.dart';
import '../../core/components/certificates-doctor_component.dart';
import '../../core/components/checkout_total_amount.dart';
import '../../core/components/doctor_services_card_component.dart';
import '../../core/components/gender_component.dart';
import '../../core/components/identity_verification_selfie_card.dart';
import '../../core/components/notification_component.dart';
import '../../core/components/past_canceled_visit_component.dart';
import '../../core/components/visa_component.dart';
import '../../core/components/weight.component.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorUtil.backgroundGrey,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              20.verticalSpace,
              GenderComponent(
                widthContainer: 140,
                heightContainer: 40,
                iconAsset: AppAssetsUtil.maleIcon,
                title: 'Male',
                pressedIconColor: AppColorUtil.white,
                pressedTitleColor: AppColorUtil.white,
                onTap: () {
                  // Todo
                },
              ),
              20.verticalSpace,
              GenderComponent(
                widthContainer: 140,
                heightContainer: 40,
                iconAsset: AppAssetsUtil.femaleIcon,
                title: 'Female',
                pressedIconColor: AppColorUtil.white,
                pressedTitleColor: AppColorUtil.white,
                onTap: () {
                  // Todo
                },
              ),
              20.verticalSpace,
              WeightComponent(
                widthContainer: 68,
                heightContainer: 45,
                title: 'Kg',
                pressedTitleColor: AppColorUtil.backgroundDarkBabyBlue,
                onTap: () {
                  // Todo
                },
              ),
              20.verticalSpace,
              const IdentityVerificationDoneCard(
                  widthContainer: 150,
                  heightContainer: 175,
                  iconAsset: AppAssetsUtil.checkCircleFillIcon,
                  title: 'Identity Verification',
                  descreption: 'Your data has been saved'),
              20.verticalSpace,
              const IdentityVerificationSelfieCard(
                  widthContainer: 150,
                  heightContainer: 175,
                  iconAsset: AppAssetsUtil.selfieIcon,
                  title: 'Selfie Photo',
                  descreption:
                      'its Required by our system\nto verify your identity'),
              20.verticalSpace,
              const VisitTypeCardComponent(
                  widthContainer: 150,
                  heightContainer: 145,
                  iconAsset: AppAssetsUtil.typeVisit1Icon,
                  typetitle: 'MEDICAL\nEXAMINATION'),
              20.verticalSpace,
              const VisitTypeCardComponent(
                widthContainer: 150,
                heightContainer: 145,
                iconAsset: AppAssetsUtil.typeVisit2Icon,
                typetitle: 'MEDICAL\nCONSULTATION',
              ),
              20.verticalSpace,
              const BranchLocationComponent(
                widthContainer: 234,
                heightContainer: 64,
                iconAsset: AppAssetsUtil.locationIcon,
                textlocation:
                    '16-EL-fath Street, Mohandsien\nMit Okba,Giza Governorate',
              ),
              20.verticalSpace,
              VisaComponent(
                widthContainer: 240,
                heightContainer: 135,
                backgroundcolorone: AppColorUtil.visaDarkBlue,
                backgroundcolortwo: AppColorUtil.visaLightBlue,
                cardnumber: '3455 5363 2732 3727',
                duedate: '02/25',
                name: 'Samar Maged',
              ),
              20.verticalSpace,
              CheckoutTotalAmount(
                widthContainer: 303,
                heightContainer: 163,
                colorContainer: AppColorUtil.textDarkGreen,
                feeAmount: 2000,
                chargesAmount: 500,
                discountAmount: 200,
                totalAmount: 2300,
              ),
              20.verticalSpace,
              const AboutDoctorCardComponent(
                  widthContainer: 302,
                  heightContainer: 202,
                  doctorName: 'Dr. KARIM\nAGGOUR',
                  doctorSpecialization: 'Dermatologist'),
              20.verticalSpace,
              const DoctorServicesCardComponent(
                iconAsset: AppAssetsUtil.group7Icon,
                title: 'Skin Diseases',
              ),
              20.verticalSpace,
              const CertificateDoctorComponent(
                widthContainer: 302,
                heightContainer: 221,
                iconAssetCertificate1: AppAssetsUtil.certificateIcon1,
                iconAssetCertificate2: AppAssetsUtil.certificateIcon2,
                iconAssetCertificate3: AppAssetsUtil.certificateIcon3,
                title: 'Certificates',
                discreption:
                    'Dr. Karim has received numerous certifications throughout his career, including board certification from the American Board of Dermatology and membership in the American Academy of Dermatology.',
              ),
              20.verticalSpace,
              const TestimonialsComponent(
                widthContainer: 302,
                heightContainer: 85,
                iconAsset: AppAssetsUtil.testimonialsImage1,
                title: 'Will Steve',
                discreption:
                    '“I’ve been seeing Dr. Karim for years for my acne and he always knows exactly what to do to keep it under control.”',
              ),
              20.verticalSpace,
              NotificationComponent(
                widthContainer: 302,
                heightContainer: 76,
                title: 'Appointment Confirmed',
                discreption:
                    'Appointment Confirmed with DR.Karim will be held on Saturday, 11th of January 10:30 AM',
                onTap: () {
                  // todo
                },
              ),
              20.verticalSpace,
              PastCanceledVisitComponent(
                iconAsset: AppAssetsUtil.doctorImage,
                doctorName: 'DR.Karim Aggour',
                doctorSpicialization: 'Dermatologist',
                status: 'Visited',
                statusColor: AppColorUtil.green,
                date: 'Monday, 11 Feb',
                time: '1:30 PM',
              ),
              20.verticalSpace,
              PastCanceledVisitComponent(
                iconAsset: AppAssetsUtil.doctorImage,
                doctorName: 'DR.Karim Aggour',
                doctorSpicialization: 'Dermatologist',
                status: 'Canceled',
                statusColor: AppColorUtil.red,
                date: 'Monday, 11 Feb',
                time: '1:30 PM',
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
