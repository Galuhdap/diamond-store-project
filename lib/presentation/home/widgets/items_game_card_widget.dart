import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/core/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsGameCard extends StatelessWidget {
  final String? label;
  final String? image;
  final VoidCallback onTap;

  const ItemsGameCard(
      {super.key,
      required this.label,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(0),
        width: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 10,
              spreadRadius: -2,
              color: AppColors.colorWhite.withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 95,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image!), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(7),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorBlack,
                    AppColors.colorPrimary,
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              child: Center(
                child: Text(
                  label!,
                  style: const TextStyle(
                      fontSize: 10,
                      color: AppColors.colorWhite,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    ).paddingOnly(right: AppSizes.s22);
  }
}