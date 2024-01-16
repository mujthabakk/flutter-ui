import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: context.w(80),
          height: context.h(50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage('assets/image/veteran_logo.jpg'),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: context.w(20),
        ),
        Text(
          'Vet-Guard',
          style: TextStyle(
              fontSize: 26, color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
