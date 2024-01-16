import 'package:flutter/material.dart';
import 'package:ui_folder_keeping_app_1/core/utils/app_size.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/community_page.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/dashborad_page.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/jobs_pages.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/study_page.dart';
import 'package:ui_folder_keeping_app_1/view/pages/auth/dashboard/widgets/molten_bottom_bar_widget.dart';
import 'package:ui_folder_keeping_app_1/view/widget/appscaffold.dart';

class AppBottomBarWidget extends StatefulWidget {
  const AppBottomBarWidget({super.key});

  @override
  State<AppBottomBarWidget> createState() => _AppBottomBarWidgetState();
}

class _AppBottomBarWidgetState extends State<AppBottomBarWidget> {
  int selectedIndex = 0;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    
    return AppScaffold(
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          DashboardPage(),
          StudyPage(),
          CommunityPage(),
          JobsPage(),
        ],
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        borderRaduis: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        domeCircleSize: context.w(80),
        domeHeight: context.h(12),
        barHeight: context.h(108),
        domeCircleColor: Colors.transparent,
        barColor: const Color(0xFF172214),
        tabs: [
          MoltenTab(
            icon: selectedIndex == 0
                ? Image.asset("assets/icon/ic_dashboard_selected.png")
                : Image.asset("assets/icon/ic_dashboard.png"),
          ),
          MoltenTab(
            icon: selectedIndex == 1
                ? Image.asset("assets/icon/ic_library_selected.png")
                : Image.asset("assets/icon/ic_library.png"),
          ),
          MoltenTab(
            icon: selectedIndex == 2
                ? Image.asset("assets/icon/ic_community_selected.png")
                : Image.asset("assets/icon/ic_community.png"),
          ),
          MoltenTab(
            icon: selectedIndex == 3
                ? Image.asset("assets/icon/ic_jobs_selected.png")
                : Image.asset("assets/icon/ic_jobs.png"),
          ),
        ],
        selectedIndex: selectedIndex,
        onTabChange: (value) {
          setState(() {
            selectedIndex = value;
          });
          _controller.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}
