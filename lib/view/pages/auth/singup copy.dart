import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/widget/appscaffold.dart';
import 'package:ui_folder_keeping_app_1/view/widget/button.dart';
import 'package:ui_folder_keeping_app_1/view/widget/logo.dart';
import 'package:ui_folder_keeping_app_1/view/widget/textfromfieled.dart';

class SingupWidget extends StatefulWidget {
  const SingupWidget({super.key});

  @override
  State<SingupWidget> createState() => _SingupWidgetState();
}

class _SingupWidgetState extends State<SingupWidget> {
  String selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(),
                SizedBox(
                  height: context.h(40),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: context.h(30),
                ),
                textfeld(
                  text: 'USERNAME',
                  text1: 'Enter email or username',
                  controllername: '',
                ),
                textfeld(
                  text: 'EMAIL',
                  text1: 'Enter your email',
                  controllername: '',
                ),
                textfeld(
                  text: 'PASSWORD',
                  text1: 'Enter your password',
                  controllername: '',
                ),
                textfeld(
                  text: 'CONFIRM PASSWORD',
                  text1: 'confirm your password',
                  controllername: '',
                ),
                textfeld(
                  text: 'PHONE NUMBER',
                  text1: 'Enter your phone number',
                  controllername: '',
                ),
                SizedBox(
                  height: context.h(20),
                ),
                RadioListTile(
                  title: Text(
                    'User agrees to the terms of service and privacy policy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w600),
                  ),
                  value: 'Option 1',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value.toString();
                    });
                  },
                ),
                AppButtonWidget(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Homepage');
                    },
                    text: 'SIGN UP')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
