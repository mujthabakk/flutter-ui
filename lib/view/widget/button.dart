import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';

class AppButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const AppButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          MediaQuery.sizeOf(context).width,
          context.h(36),
        ),
        padding: EdgeInsets.zero,
        shadowColor: Colors.white,
        elevation: 6,
        foregroundColor: Colors.white,
      ),
      child: Ink(
        width: MediaQuery.sizeOf(context).width,
        height: context.h(56),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.w(56)),
          image: const DecorationImage(
            image: AssetImage("assets/image/button_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.mulish(
              letterSpacing: 3,
              color: const Color(0xff52FF00),
              fontWeight: FontWeight.w900,
              fontSize: context.w(16),
            ),
          ),
        ),
      ),
    );
  }
}
