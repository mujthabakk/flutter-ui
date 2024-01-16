import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/qusescart.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return QuestCard(
      text1: 'Community',
      text2: 'Join 1+ conversations with your classmates',
      img: 'assets/icon/ic_community_arrow.png',
      child: Column(
        children: [
          SizedBox(
            height: context.w(16),
          ),
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/img_profile.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              SizedBox(
                width: context.w(6),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Marci Winkles has published ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'a new article!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/img_community.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, top: 8),
            child: Row(
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    color: Color(0xFFE0E0E0),
                    fontSize: 13,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                    letterSpacing: 0.20,
                  ),
                ),
                SizedBox(
                  width: context.w(8),
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: Color(0xFFE0E0E0),
                    fontSize: 13,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                    letterSpacing: 0.20,
                  ),
                ),
                SizedBox(
                  width: context.w(8),
                ),
                Text(
                  '16:52 PM',
                  style: TextStyle(
                    color: Color(0xFFE0E0E0),
                    fontSize: 13,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                    letterSpacing: 0.20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
