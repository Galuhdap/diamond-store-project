import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:diamond_store/core/utils/extensions/sized_box_ext.dart';
import 'package:diamond_store/presentation/history/widget/rectangle_status_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardHistoryWidget extends StatelessWidget {
  final String name;
  final String diamond;
  final String status;

  const CardHistoryWidget(
      {super.key,
      required this.name,
      required this.diamond,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: AppSizes.onlyPadding(bottom: AppSizes.s20),
          padding: AppSizes.onlyPadding(
              top: AppSizes.s15,
              bottom: AppSizes.s15,
              left: AppSizes.s14,
              right: AppSizes.s38),
          decoration: BoxDecoration(
            color: AppColors.colorSilverLightGray,
            borderRadius: BorderRadius.circular(AppSizes.s8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: AppColors.colorGrayWhite,
                  ),
                  AppSizes.s15.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Get.textTheme.titleMedium!.copyWith(
                            fontSize: AppSizes.s14,
                            color: AppColors.colorBlack),
                      ),
                      AppSizes.s4.height,
                      Text(
                        diamond,
                        style: Get.textTheme.titleMedium!.copyWith(
                            fontSize: AppSizes.s14,
                            color: AppColors.colorBlack,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                status,
                style: Get.textTheme.titleMedium!.copyWith(
                    fontSize: AppSizes.s14, color: AppColors.colorBlack),
              ),
            ],
          ),
        ),
        Positioned(
          child: ClipPath(
            clipper: CustomRectangleStatus(),
            child: Container(
              width: AppSizes.s22,
              height: AppSizes.s22,
              decoration: BoxDecoration(
                color: status == 'Pending'
                    ? AppColors.colorStatusOrange
                    : AppColors.colorStatusGreen,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}