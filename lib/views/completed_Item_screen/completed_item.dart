import 'package:delivery_user/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/style.dart';

class CompletedItem extends StatelessWidget {
  const CompletedItem({
    super.key,required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ZoomTapAnimation(
        onTap:  onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 7,horizontal: 8),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)
          ),
          child: Row(
            children: [
              Container(
                // margin: const EdgeInsets.all(8),
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Color(0xffE1E1E1),width: 2)
                ),
              ),
              Flexible(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nitro 5 Gaming Laptop - AN515 -54 - 70KK",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:MyTextStyle.poppinsRegular15
                  // TextStyle(),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Flexible(child: Text("27/02/2021   14:02 ",maxLines: 1,overflow: TextOverflow.ellipsis,)),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                      child: Text("yo’lda",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white
                      ),
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.c_F9A825,
                        borderRadius: BorderRadius.circular(18)
                      ),
                    )
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Flexible(child: Text("27/02/2021  14:02 ",maxLines: 1,overflow: TextOverflow.ellipsis,)),
                    Text("15 000 sum",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black
                    ),
                    )
                  ],),
                ],
              ))


            ],
          ),
        )
      ),
    );
  }
}
// Container(
// padding: EdgeInsets.only(left: 8, top: 8),
// width: 350,
// height: 90,
// decoration: BoxDecoration(
// color: AppColors.c_F5F5F5,
// borderRadius: BorderRadius.circular(5),
// border: Border.all(color: Colors.black)),
// child: Row(
// children: [
// Container(
// width: 75,
// height: 75,
// decoration: BoxDecoration(
// color: AppColors.c_FDA987,
// shape: BoxShape.circle,
// border: Border.all(
// color: AppColors.c_E1E1E1,
// width: 3,
// ),
// ),
// ),
// const SizedBox(
// width: 15,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: const [
// Text("Nitro 5 Gaming Laptop - AN515  -54 - 70KK"),
// Text("27/02/2021   14:02 "),
// Text("27/02/2021   14:02 "),
// ],
// ),
// Stack(
// clipBehavior: Clip.none,
// children: [
// Container(
// width: 67,
// height: 13,
// decoration: BoxDecoration(
// color: AppColors.c_F2271C,
// borderRadius: BorderRadius.circular(18)),
// ),
// Positioned(
// top: 20,
// child: Text("15 000 sum"),
// ),
// ],
// )
// ],
// ),
// ),