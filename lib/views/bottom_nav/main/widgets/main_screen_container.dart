import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainScreenContainer extends StatelessWidget {
  const MainScreenContainer({
    super.key,
    required this.count,
    required this.title,
    required this.color,
    required this.onTap,
  });
  final String title;
  final String count;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 156.w,
        height: 94.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  MyTextStyle.poppinsRegular.copyWith(color: AppColors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              count,
              style: MyTextStyle.poppinsRegular
                  .copyWith(color: AppColors.white, fontSize: 18.sp),
            ),
          ],
        ),
      ),
    );
  }
}
