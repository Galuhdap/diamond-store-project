import 'package:diamond_store/core/component/background_app_component.dart';
import 'package:diamond_store/core/component/button_component.dart';
import 'package:diamond_store/core/resources/constans/app_constants.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:diamond_store/core/utils/extensions/sized_box_ext.dart';
import 'package:diamond_store/presentation/profile/widgets/profile_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundApp(
        child: ListView(
          children: [
            Center(
              child: Text(
                AppConstants.LABEL_PROFILE,
                style: Get.textTheme.titleMedium!.copyWith(
                    fontSize: AppSizes.s28, color: AppColors.colorWhite),
              ),
            ),
            Container(
              margin: AppSizes.symmetricPadding(
                  horizontal: AppSizes.s24, vertical: AppSizes.s32),
              padding: AppSizes.symmetricPadding(
                  vertical: AppSizes.s24, horizontal: AppSizes.s20),
              decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.circular(AppSizes.s15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                      backgroundColor: AppColors.colorGrayWhite,
                    ),
                  ),
                  AppSizes.s14.height,
                  Text(
                    AppConstants.LABEL_GENERAL_INFORMATION.toUpperCase(),
                    style: Get.textTheme.titleMedium!
                        .copyWith(fontSize: AppSizes.s16, fontWeight: FontWeight.bold),
                  ),
                  AppSizes.s16.height,
                  ProfileInformationWidget(
                    label: AppConstants.LABEL_USERNAME,
                    name: 'Jhon',
                  ),
                  ProfileInformationWidget(
                    label: AppConstants.LABEL_EMAIL,
                    name: 'johndoe@diamond.com',
                  ),
                  ProfileInformationWidget(
                    label: AppConstants.LABEL_PHONE_NUMBER,
                    name: '0897789990123',
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Button.filled(
                    onPressed: () {
                      Get.toNamed('/edit-profile');
                    },
                    label: AppConstants.LABEL_EDIT_PROFILE),
                AppSizes.s11.height,
                Row(
                  children: [
                    Flexible(
                        child: Button.filled(
                            onPressed: () {}, label: AppConstants.LABEL_DELETE_AKUN)),
                    AppSizes.s5.width,
                    Flexible(
                      child: Button.filled(
                        onPressed: () {},
                        label: AppConstants.LABEL_LOGOUT,
                        color: AppColors.colorRed,
                      ),
                    ),
                  ],
                )
              ],
            ).paddingSymmetric(horizontal: AppSizes.s16)
          ],
        ),
      ),
    );
  }
}
