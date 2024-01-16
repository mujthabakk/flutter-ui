import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/appbar.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/facilitatormanual.dart';
import 'package:ui_folder_keeping_app_1/view/widget/appscaffold.dart';

class StudyPage extends StatefulWidget {
  StudyPage({super.key});

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  bool aa = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: aa
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                appbarwidget(),
                SizedBox(
                  height: context.h(33),
                ),
                Text(
                  'Life Skills - Understanding\nYourself - 1 (Einglish)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: context.h(42),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      aa = !aa;
                    });
                  },
                  child: Manual(
                    a: 1,
                  ),
                ),
                gap(),
                InkWell(
                  onTap: () {
                    setState(() {
                      aa = !aa;
                    });
                  },
                  child: Manual(
                    a: 2,
                  ),
                ),
                gap(),
                InkWell(
                  onTap: () {
                    setState(() {
                      aa = !aa;
                    });
                  },
                  child: Manual(
                    a: 3,
                  ),
                ),
                gap(),
                InkWell(
                  onTap: () {
                    aa = !aa;
                  },
                  child: Manual(
                    a: 4,
                  ),
                ),
                gap(),
                InkWell(
                  onTap: () {
                    aa = !aa;
                  },
                  child: Manual(
                    a: 5,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                appbarwidget(),
                SizedBox(
                  height: context.h(64),
                ),
                Container(
                  width: 341,
                  height: 600,
                  decoration: ShapeDecoration(
                    color: Color(0xFF121601),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}

class gap extends StatelessWidget {
  const gap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(21),
    );
  }
}
