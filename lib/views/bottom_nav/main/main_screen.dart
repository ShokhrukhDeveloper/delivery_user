import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/utils/constants.dart';
import 'package:delivery_user/views/bottom_nav/main/widgets/main_screen_container.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GloabalAppBar(
          title: "Assalom alekum: Shoxrux", appbarColor: AppColors.c_F9F9F9),
      body: Padding(
        padding: EdgeInsets.only(top: 12.h, left: 12, right: 12),
        child: GridView(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.5,
          ),
          children: List.generate(
            4,
            (index) => MainScreenContainer(
                onTap: () {
                  Navigator.pushNamed(context, routeNames[index]);
                },
                count: "12 ta",
                title: allTitles[index],
                color: allColors[index]),
          ),
        ),
      ),
    );
  }
}
