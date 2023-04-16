import 'package:delivery_user/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ReturnedItem extends StatelessWidget {
  const ReturnedItem({
    super.key,required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ZoomTapAnimation(
        onTap:  onTap,
        child: Container(
          padding: EdgeInsets.only(left: 8, top: 8),
          width: 350,
          height: 90,
          decoration: BoxDecoration(
              color: AppColors.c_F5F5F5,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black)),
          child: Row(
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: AppColors.c_FDA987,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.c_E1E1E1,
                    width: 3,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nitro 5 Gaming Laptop - AN515 \n-54 - 70KK"),
                  Text("27/02/2021   14:02 "),
                  Text("27/02/2021   14:02 "),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 67,
                    height: 13,
                    decoration: BoxDecoration(
                        color: AppColors.c_F2271C,
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  Positioned(
                    top: 20,
                    child: Text("15 000 sum"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
