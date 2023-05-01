import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/retturned_item.dart';

class CompletedOrdersScreen extends StatelessWidget {
  const CompletedOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        title: "Yakunlangan buyurtmalar",
        appbarColor: AppColors.c_22C348,
        isMain: false,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: 10,
          right: 15,
          top: 15,
        ),
        children: List.generate(
          10,
          (index) => ReturnedItem(
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                context: context,
                builder: (context) {
                  return Container(
                    clipBehavior: Clip.none,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      ),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 38,
                                child: Image.asset('images/user_image.jpg'),
                              ),
                              const Text(
                                "Nitro 5 Gaming Laptop - \nAN515 -54 - 70KK",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Mijoz raqami: '),
                              Text('+998903901898'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Manzili - 1 dan'),
                              Text('Google map'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Manzili - 2 ga'),
                              Text('Google map'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Yetkazish narxi'),
                              Text('15 000 so\'m'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Izoh: '),
                              Text('Juda yaxshi holatda'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Status: '),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                child:const  Text('Yakunlangan'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Dostavkachi raqami: '),
                              Text('+99890223293'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Yaratilgan vaqti: '),
                              Text('16:30 02.03.2023-y'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Yakunlangan vaqti: '),
                              Text('16:30 04.03.2023-y'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
