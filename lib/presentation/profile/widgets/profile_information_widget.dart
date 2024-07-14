import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:diamond_store/core/utils/extensions/sized_box_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInformationWidget extends StatelessWidget {
  final String label;
  final String name;

  const ProfileInformationWidget({
    super.key,
    required this.label,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Get.textTheme.titleMedium!
              .copyWith(fontSize: AppSizes.s12, color: AppColors.colorGrayText),
        ),
        AppSizes.s8.height,
        Text(
          name,
          style: Get.textTheme.titleMedium!.copyWith(fontSize: AppSizes.s16),
        ),
        AppSizes.s8.height,
        Divider(
          color: AppColors.colorGrayText,
        ),
      ],
    );
  }
}