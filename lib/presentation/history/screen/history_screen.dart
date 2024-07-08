import 'package:diamond_store/core/component/background_app_component.dart';
import 'package:diamond_store/core/component/button_component.dart';
import 'package:diamond_store/core/component/input_component.dart';
import 'package:diamond_store/core/resources/constans/app_constants.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:diamond_store/core/utils/extensions/sized_box_ext.dart';
import 'package:diamond_store/presentation/history/controller/history_controller.dart';
import 'package:diamond_store/presentation/history/widget/card_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
      init: HistoryController(),
      builder: (controller) {
        return Scaffold(
          body: BackgroundApp(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    AppConstants.LABEL_HISTORY,
                    style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: AppSizes.s28, color: AppColors.colorWhite),
                  ),
                ),
                AppSizes.s32.height,
                Text(
                  AppConstants.LABEL_TRACK_YOUR_ORDER,
                  style: Get.textTheme.titleMedium!.copyWith(
                      fontSize: AppSizes.s24, color: AppColors.colorWhite),
                ),
                AppSizes.s20.height,
                CustomTextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.none,
                  hintText: AppConstants.HINT_PHONE_NUMBER,
                ),
                AppSizes.s25.height,
                Button.filled(
                    onPressed: () {}, label: AppConstants.ACTION_TRACK_ORDER),
                AppSizes.s41.height,
                Divider(
                  thickness: 1,
                ),
                AppSizes.s32.height,
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: AppSizes.onlyPadding(top: AppSizes.s2),
                    scrollDirection: Axis.vertical,
                    itemCount: controller.historyCard.length,
                    itemBuilder: (BuildContext context, index) {
                      var data = controller.historyCard[index];
                      return CardHistoryWidget(
                        name: data.name_game,
                        diamond: data.diamond,
                        status: data.status,
                      );
                    },
                  ),
                ),
              ],
            ).paddingOnly(
                top: AppSizes.s60, left: AppSizes.s16, right: AppSizes.s16),
          ),
        );
      },
    );
  }
}


