import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/qusescart.dart';
class LibraryCard extends StatelessWidget {
  const LibraryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return QuestCard(
      text1: 'Library',
      text2: 'Check out 37+ courses for you',
      img: 'assets/icon/ic_library_arrow.png',
      child: Column(
        children: [
          SizedBox(
            height: context.h(33),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Life Skills - Understanding\nYourself - 1 (Hinglish)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: context.w(14),
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w900,
                  height: 0,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                width: context.w(26),
              ),
              Container(
                width: 81,
                height: 25,
                decoration: ShapeDecoration(
                  color: Color(0xFF79D431),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
