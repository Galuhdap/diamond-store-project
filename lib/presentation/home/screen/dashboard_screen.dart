import 'package:diamond_store/core/assets/assets.gen.dart';
import 'package:diamond_store/core/config/theme_config.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:diamond_store/presentation/home/screen/home_screen.dart';
import 'package:diamond_store/presentation/home/widgets/nav_items_widget.dart';
import 'package:flutter/material.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const HomeScreen(),
   const HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: ThemeConfig.neutral100,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30.0,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
              color: AppColors.black100.withOpacity(0.08),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItems(
              label: 'Home',
              iconPath: Assets.icons.homes.path,
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            NavItems(
              label: 'History',
              iconPath: Assets.icons.history.path,
              isActive: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            NavItems(
              label: 'Profile',
              iconPath: Assets.icons.profiles.path,
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }
}