import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';

// ignore: must_be_immutable
class OnBordeText extends StatelessWidget {
  String text;
  OnBordeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
          color: Colors.white,
          fontSize: context.w(45),
          fontWeight: FontWeight.w900),
    );
  }
}
