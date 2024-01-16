import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/widget/appscaffold.dart';
import 'package:ui_folder_keeping_app_1/view/widget/button.dart';
import 'package:ui_folder_keeping_app_1/view/widget/greencontiner.dart';
import 'package:ui_folder_keeping_app_1/view/widget/imagecontaine.dart';
import 'package:ui_folder_keeping_app_1/view/widget/onbordtext.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    return AppScaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.h(130),
          ),
          SizedBox(
            height: context.h(416),
            child: Stack(
              children: [
                SizedBox(
                  height: context.h(416),
                  child: PageView(
                    controller: pageController,
                    children: [
                      imagecontainer(),
                      imagecontainer(),
                      imagecontainer(),
                      imagecontainer(),
                    ],
                  ),
                ),
                greencontainer(pageController: pageController)
              ],
            ),
          ),
          SizedBox(
            height: context.h(60),
          ),
          OnBordeText(
            text: 'Support veterans in',
          ),
          OnBordeText(
            text: 'their battle against',
          ),
          OnBordeText(
            text: 'suicide',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: AppButtonWidget(
              onPressed: () {
                 Navigator.pushNamed(context, '/Login');
              },
              text: 'GET STARIED',
            ),
          )
        ],
      ),
    );
  }
}
