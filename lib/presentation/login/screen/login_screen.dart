import 'package:diamond_store/core/config/theme_config.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:diamond_store/core/utils/extensions/sized_box_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Assets.images.logoCe.image(),
          20.height,
          Text(
            'Welcome CE',
            style: Get.textTheme.titleLarge,
          ),
          Container(
            padding: AppSizes.allPadding(AppSizes.s16),
            margin: AppSizes.allPadding(AppSizes.s16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ThemeConfig.baseBlue,
              borderRadius: BorderRadius.circular(
                AppSizes.s20,
              ),
            ),
            child: Center(
              child: Text(
                'LOGIN',
                style: Get.textTheme.bodyMedium!
                    .copyWith(color: ThemeConfig.neutral100),
              ),
            ),
          )
        ],
      ).paddingAll(AppSizes.s16)
    );
  }
}
