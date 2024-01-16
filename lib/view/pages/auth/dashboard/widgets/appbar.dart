import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
class appbarwidget extends StatelessWidget {
  const appbarwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.h(50),
        ),
        Row(
          children: [
            SizedBox(
              width: context.w(44),
            ),
            Container(
              width: context.w(67),
              height: context.w(67),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff03DABB), width: 2),
                  borderRadius: BorderRadius.circular(67),
                  image: DecorationImage(
                      image: AssetImage('assets/image/profile.jpeg'))),
            ),
            SizedBox(
              width: context.w(15),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tesla Roadster',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.4000000059604645),
                    fontSize: context.h(18),
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                Text(
                  'Elina Krohnke',
                  style: TextStyle(
                    color: Color(0xFFEAEAEA),
                    fontSize: 24,
                    fontFamily: 'Space Grotesk',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
            Spacer(),
            Container(
              width: context.w(60),
              height: context.h(60),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(context.w(67)),
                  image: DecorationImage(
                      image: AssetImage('assets/image/img_settings.png'))),
            ),
            SizedBox(
              width: context.w(24),
            )
          ],
        )
      ],
    );
  }
}
