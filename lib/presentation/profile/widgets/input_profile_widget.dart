import 'package:diamond_store/core/component/input_component.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:diamond_store/core/utils/extensions/sized_box_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputProfileWidget extends StatelessWidget {
  final String label;
  final TextEditingController textController;
  final TextInputType? textInputType;
  const InputProfileWidget(
      {super.key,
      required this.label,
      required this.textController,
     this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Get.textTheme.titleMedium!.copyWith(
              fontSize: AppSizes.s14,
              fontWeight: FontWeight.normal,
              color: AppColors.colorDarkGray),
        ),
        AppSizes.s10.height,
        CustomTextField(
          controller: textController,
          keyboardType: textInputType,
        ),
      ],
    ).paddingOnly(bottom: AppSizes.s20);
  }
}