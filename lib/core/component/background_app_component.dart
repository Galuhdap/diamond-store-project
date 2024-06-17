import 'package:diamond_store/core/assets/assets.gen.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class BackgroundApp extends StatelessWidget {
  final Widget? child;

  const BackgroundApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        //color: backgroundApp,
        image: DecorationImage(
          image: AssetImage(Assets.images.bg.path),
          fit: BoxFit.cover,
        ),
        gradient: const LinearGradient(
          colors: [
            AppColors.colorBlack,
            AppColors.colorPrimary,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}