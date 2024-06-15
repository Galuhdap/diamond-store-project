import 'package:diamond_store/core/config/theme_config.dart';
import 'package:diamond_store/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Base Projet',
      initialRoute: AppRoutes.login,
      theme: ThemeConfig.lightMode,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
    );
  }
}
