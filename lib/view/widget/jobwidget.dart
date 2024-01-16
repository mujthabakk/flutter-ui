import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/qusescart.dart';
class JobWidget extends StatelessWidget {
  const JobWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return QuestCard(
      text1: 'Job',
      text2: 'office Executive / Co-Ordinator',
      img: 'assets/icon/ic_community_arrow.png',
      child: Column(
        children: [
          SizedBox(
            height: context.h(25),
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        padding: const EdgeInsets.all(6),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(26),
                          ),
                        ),
                        child: Row(children: [
                          Row(
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icon/ic_twitter.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11),
                    child: Container(
                      width: context.w(46),
                      height: context.h(20),
                      decoration: BoxDecoration(
                          color: Color(0xff656665),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5))),
                      child: Center(
                          child: Text(
                        'Pune',
                        style: TextStyle(
                          color: Color(0xFFD3D3D3),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                        ),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: context.w(16),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Senior Product Designer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      // height: 0.07,
                    ),
                  ),
                  Opacity(
                    opacity: 0.80,
                    child: Text(
                      'Twitter ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // height: 0.09,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 11, left: 90),
                        child: Row(
                          children: [
                            Text(
                              '.  Part Time',
                              style: TextStyle(
                                color: Color(0xFFD3D3D3),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                              ),
                            ),
                            SizedBox(
                              width: context.w(10),
                            ),
                            Text(
                              '. Hybrid',
                              style: TextStyle(
                                color: Color(0xFFD3D3D3),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
