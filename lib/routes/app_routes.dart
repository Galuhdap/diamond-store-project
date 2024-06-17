import 'package:diamond_store/presentation/home/screen/dashboard_screen.dart';
import 'package:diamond_store/presentation/home/screen/home_screen.dart';
import 'package:get/get.dart';

import '../presentation/login/screen/login_screen.dart';


class AppRoutes {

  static const String main = "/";

  static const String login = "/login";
  static const String dashboard = "/dashboard";
  static const String home = "/home";


  static final routes = [
    GetPage(name: login, page : () => LoginScreen()),
    GetPage(name: dashboard, page : () => DashboardScreen()),
    GetPage(name: home, page : () => HomeScreen()),
    //cara menggunakan Binding
    //GetPage(name: login, page : () => LoginScreen(), binding: LoginBinding()),
  ];

}