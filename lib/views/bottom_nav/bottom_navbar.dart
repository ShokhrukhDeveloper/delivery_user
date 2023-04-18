import 'dart:ffi';

import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/utils/icons.dart';
import 'package:delivery_user/utils/style.dart';
import 'package:delivery_user/views/bottom_nav/basket/basket_screen.dart';
import 'package:delivery_user/views/bottom_nav/history/history_screen.dart';
import 'package:delivery_user/views/bottom_nav/main/main_screen.dart';
import 'package:delivery_user/views/bottom_nav/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [];
  int index = 0;
  @override
  void initState() {
    pages = [
      MainScreen(),
      HistoryScreen(),
      BasketScreen(),
      ProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 60,
        child: BottomNavigationBar(
          selectedLabelStyle: MyTextStyle.poppinsRegular.copyWith(fontSize: 12.sp),
          unselectedLabelStyle: MyTextStyle.poppinsRegular.copyWith(fontSize: 12.sp, color: AppColors.c_161616),
            backgroundColor: AppColors.c_DADADA,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.mainIcon), label: "Asosiy"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.historyIcon), label: "Tarix"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.basketIcon),
                  label: "Savatcha"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.profileIcon),
                  label: "Account"),
            ]),
      ),
      body: pages[index],
    );
  }
}
