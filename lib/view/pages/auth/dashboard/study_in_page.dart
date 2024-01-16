import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/appbar.dart';
import 'package:ui_folder_keeping_app_1/view/widget/appscaffold.dart';

class LifeSkillsinPage extends StatelessWidget {
  const LifeSkillsinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // appbarwidget(),
      SizedBox(
        height: context.h(64),
      ),
      Container(
        width: 341,
        height: 652,
        decoration: ShapeDecoration(
          color: Color(0xFF121601),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      )
    ]);
  }
}
