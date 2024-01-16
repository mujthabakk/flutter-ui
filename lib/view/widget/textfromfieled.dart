import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';

// ignore: must_be_immutable
class textfeld extends StatelessWidget {
  String text;
  String text1;
  String controllername;
  textfeld(
      {super.key,
      required this.text,
      required this.text1,
      required this.controllername});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllername = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          controller: controllername,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white, width: context.w(1))),
              hintText: text1,
              hintStyle: const TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 100, 91, 91)),
              contentPadding: const EdgeInsets.only(left: 10),
              filled: true,
              fillColor: const Color(0xFF131411),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(
          height: context.h(15),
        )
      ],
    );
  }
}
