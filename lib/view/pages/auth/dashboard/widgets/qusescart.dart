import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';

class QuestCard extends StatelessWidget {
  final String text1;
  final String text2;
  String img;
  Widget child;
  QuestCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.img,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w(385),
      height: context.h(184),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.w(13)),
              topRight: Radius.circular(context.w(13))),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff15150e),
                Color.fromARGB(0, 67, 70, 37),
              ])),
      child: Padding(
        padding: const EdgeInsets.only(top: 27, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    color: Color(0xFF91EE66),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w900,
                    height: 0,
                    letterSpacing: 1.60,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: AssetImage(img),
                  radius: context.w(15),
                ),
                SizedBox(
                  width: context.w(34),
                )
              ],
            ),
            SizedBox(
              height: context.h(9),
            ),
            Text(
              text2,
              style: TextStyle(
                color: Color(0xFFBBBBBB),
                fontSize: 10,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 1,
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
