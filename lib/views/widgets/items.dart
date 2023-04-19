import 'package:delivery_user/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/style.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,required this.onTap, required this.startDate, required this.title, required this.endDate, required this.price, required this.statusColor, this.icon, required this.status});
  final String startDate;
  final String title;
  final String status;
  final String endDate;
  final String price;
  final Color statusColor;
  final Widget? icon;


  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
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
                  margin: const EdgeInsets.only(right: 8),
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Color(0xffE1E1E1),width: 2)
                  ),
                  child: icon,
                ),
                Flexible(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment:Alignment.topLeft,
                          child: Text(title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:MyTextStyle.poppinsRegular15
                            // TextStyle(),

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(startDate,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:MyTextStyle.poppinsSemiBold12,
                            )),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                              child: Text(status,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: statusColor,
                                  borderRadius: BorderRadius.circular(18)
                              ),
                            )
                          ],),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Flexible(child: Text(endDate,
                              maxLines: 1,overflow: TextOverflow.ellipsis,
                              style:MyTextStyle.poppinsSemiBold12,
                            )),
                            Text("$price sum",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: MyTextStyle.poppinsLight15
                            )
                          ],),
                      ],
                    )),

              ],
            ),
          )
      ),
    );
  }
}
