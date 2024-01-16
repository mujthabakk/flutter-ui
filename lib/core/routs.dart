import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/app_bottom_bar_widgt.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/singup%20copy.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/login.dart';
// import 'package:ui_folder_keeping_app_1/view/pages/auth/singup.dart';
import 'package:ui_folder_keeping_app_1/view/pages/onbording/onbording.dart';

final routes = {
  '/': (context) => const OnBording(),
  '/Login': (context) => const Loging(),
  '/sing': (context) =>  SingupWidget(),
  '/Homepage':(context)=>AppBottomBarWidget(),
};
