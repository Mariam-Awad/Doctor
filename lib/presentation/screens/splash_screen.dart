import 'package:doctor/core/components/identity_verification_done_card.dart';
import 'package:doctor/core/components/visit_type_card_component.dart';
import 'package:doctor/core/utils/app_assets_util.dart';
import 'package:doctor/core/utils/app_colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/branch_location_component.dart';
import '../../core/components/gender_component.dart';
import '../../core/components/identity_verification_selfie_card.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
