import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:delivery_user/views/widgets/retturned_item.dart';
import 'package:flutter/material.dart';

class ReturnedItemsScreen extends StatelessWidget {
  const ReturnedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GloabalAppBar(
        title: "Qaytarilgan buyumlar",
        appbarColor: AppColors.c_F2271C,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 10,
          right: 15,
          top: 15,
        ),
        children: List.generate(
            10,
            (index) => ReturnedItem(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column();
                      },
                    );
                  },
                )),
      ),
    );
  }
}
