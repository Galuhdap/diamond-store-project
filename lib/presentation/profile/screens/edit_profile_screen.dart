import 'package:diamond_store/core/component/button_component.dart';
import 'package:diamond_store/core/resources/constans/app_constants.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:diamond_store/core/utils/extensions/sized_box_ext.dart';
import 'package:diamond_store/presentation/profile/widgets/input_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppConstants.LABEL_EDIT_PROFILE,
            style: Get.textTheme.titleMedium!.copyWith(fontSize: AppSizes.s28),
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.black100,
              )),
        ),
        body: ListView(
          children: [
            Text(
              AppConstants.LABEL_PROFILE_PICTURE.toUpperCase(),
              style:
                  Get.textTheme.titleMedium!.copyWith(fontSize: AppSizes.s16),
            ),
            AppSizes.s16.height,
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: AppColors.colorGrayWhite,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.enhance_photo_translate,
                          color: AppColors.colorWhite,
                        ),
                      ),
                      Text(
                        AppConstants.LABEL_UPLOAD_PHOTO,
                        style: Get.textTheme.titleMedium!
                            .copyWith(fontSize: AppSizes.s10, color: AppColors.colorWhite),
                      ),
                    ],
                  )
                ],
              ),
            ),
            AppSizes.s24.height,
            InputProfileWidget(
              label: AppConstants.LABEL_USERNAME,
              textController: TextEditingController(),
            ),
            InputProfileWidget(
              label: AppConstants.LABEL_EMAIL,
              textController: TextEditingController(),
            ),
            InputProfileWidget(
              label: AppConstants.LABEL_PHONE_NUMBER,
              textController: TextEditingController(),
            ),
            Button.filled(onPressed: () {}, label: AppConstants.LABEL_SAVE_PROFILE)
          ],
        ).paddingOnly(
            left: AppSizes.s16, right: AppSizes.s16, top: AppSizes.s45));
  }
}
