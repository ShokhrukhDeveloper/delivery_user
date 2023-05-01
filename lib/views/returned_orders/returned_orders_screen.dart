import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:delivery_user/views/widgets/retturned_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReturnedItemsScreen extends StatelessWidget {
  const ReturnedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        title: "Qaytarilgan buyumlar",
        appbarColor: AppColors.c_F2271C,
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
