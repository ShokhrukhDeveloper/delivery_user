import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ReturnedItem extends StatelessWidget {
  const ReturnedItem({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ZoomTapAnimation(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(
            left: 8,
            top: 8,
          ),
          width: 350.w,
          height: 90.h,
          decoration: BoxDecoration(
            color: AppColors.c_F5F5F5,
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            children: [
              Container(
                width: 75.w,
                height: 75.h,
                decoration: BoxDecoration(
                  color: AppColors.c_FDA987,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.c_E1E1E1,
                    width: 3,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nitro 5 Gaming Laptop - \nAN515 -54 - 70KK",
                    style: MyTextStyle.poppinsMedium.copyWith(
                      fontSize: 15.sp,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  Text(
                    "27/02/2021   14:02 ",
                    style: MyTextStyle.poppinsMedium.copyWith(
                      fontSize: 12.sp,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  Text(
                    "27/02/2021   14:02 ",
                    style: MyTextStyle.poppinsMedium.copyWith(
                      fontSize: 12.sp,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 95),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //        Container(
              //             width: 67,
              //             height: 13.h,
              //             decoration: BoxDecoration(
              //               color: AppColors.c_F2271C,
              //               borderRadius: BorderRadius.circular(18.r),
              //             ),
              //           ),
              //           Text(
              //             "15 000 sum",
              //             style: MyTextStyle.poppinsRegular.copyWith(
              //               fontSize: 15.sp,
              //               color: const Color(0xFF000000),
              //             ),
              //           ),

              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
