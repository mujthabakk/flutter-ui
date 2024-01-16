import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/study_in_page.dart';

class Manual extends StatefulWidget {
  final int a;
  const Manual({super.key, required this.a});

  @override
  State<Manual> createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        width: double.infinity,
        height: context.h(104),
        decoration: BoxDecoration(
            color: Color(0xff191b05),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, spreadRadius: 1, offset: Offset(1, 1))
            ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 13, left: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(
                  'Facilitator Manual - Understanding \nYourself ${widget.a}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 44,
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 54),
                    child: Image.asset(
                      'assets/icon/ic _document download_.png',
                      width: context.w(15),
                      height: context.h(15),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.h(9),
            ),
            Text(
              'Status: Not Started',
              style: TextStyle(
                color: Color(0xFF8E8E8E),
                fontSize: 9,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Duration:',
              style: TextStyle(
                color: Color(0xFF8E8E8E),
                fontSize: 9,
                fontWeight: FontWeight.w400,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
