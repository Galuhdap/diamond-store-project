import 'package:diamond_store/core/assets/assets.gen.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MetodeBuyCard extends StatelessWidget {
  final String title;

  const MetodeBuyCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
          width: 88,
          height: 124,
          decoration: BoxDecoration(
            color: AppColors.colorWhite,
            border: Border.all(color: AppColors.colorRed, width: 3.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.icons.cardCredit.path)
                  .paddingOnly(top: 18, right: 13, bottom: 8.0),
              Image.asset(title),
            ],
          )),
    );
  }
}

class Item {
  final String title;

  Item(this.title);
}
