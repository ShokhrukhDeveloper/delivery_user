import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

import 'completed_item.dart';

class CompletedItemsScreen extends StatelessWidget {
  const CompletedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GloabalAppBar(
        title: "Qaytarilgan buyumlar",
        appbarColor: AppColors.c_22C348,
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
                (index) => CompletedItem(
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
