import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';

class imagecontainer extends StatelessWidget {
  const imagecontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.h(200),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 50, 60, 6),
            spreadRadius: 1,
            blurRadius: 5,
          )
        ],
        image: const DecorationImage(
            image: AssetImage('assets/image/flutter_task_img_1.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.all(
            Radius.elliptical(context.w(40), context.h(60))),
        // color: Colors.amber
      ),
    );
  }
}
