import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/appbar.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/communitycard.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/librarycard.dart';
// import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/qusescart.dart';
import 'package:ui_folder_keeping_app_1/view/widget/appscaffold.dart';
import 'package:ui_folder_keeping_app_1/view/widget/jobwidget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appbarwidget(),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quest',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w900,
                    height: 0,
                    letterSpacing: 2.40,
                  ),
                ),
                Text(
                  'Find your latest activities here',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w900,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 45, left: 41, right: 41, bottom: 25),
            child: Container(
              width: context.w(385),
              height: context.h(622),
              decoration: BoxDecoration(
                color: Color(0xffcccccc),
              ),
              child: Column(
                children: [
                  LibraryCard(),
                  SizedBox(
                    height: context.h(25),
                  ),
                  CommunityCard(),
                  SizedBox(
                    height: context.h(25),
                  ),
                  JobWidget()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
