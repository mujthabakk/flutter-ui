import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/widget/appscaffold.dart';
import 'package:ui_folder_keeping_app_1/view/widget/button.dart';
import 'package:ui_folder_keeping_app_1/view/widget/logo.dart';
import 'package:ui_folder_keeping_app_1/view/widget/textfromfieled.dart';

class Loging extends StatelessWidget {
  const Loging({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        // physics: BouncingScrollPhysics,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 160),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Logo(),
              SizedBox(
                height: context.h(60),
              ),
              const Text(
                'Welcome to Hero\'s Journey',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: context.h(50),
              ),
              textfeld(
                text: 'USERNAME',
                text1: 'Enter email or username',
                controllername: '',
              ),
              textfeld(
                text: 'PASSWORD',
                text1: 'Enter your password',
                controllername: '',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Remember me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password',
                      style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: context.h(10),
              ),
              AppButtonWidget(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sing');
                  },
                  text: 'LOGIN'),
              const SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sing');
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                    ),
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
