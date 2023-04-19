import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/items.dart';


class CompletedItemsScreen extends StatelessWidget {
  const CompletedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        title: "Qaytarilgan buyumlar",
        appbarColor: AppColors.c_22C348,
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
                (index) => OrderItem(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column();
                  },
                );
              }, startDate: '27/02/2021   14:02 ',
                  title: 'Nitro 5 Gaming Laptop - AN515 -54 - 70KK',
                  endDate: '27/02/2021   14:02 ',
                  price: '25 000',
                  status: "yakunlangan",
                  statusColor: AppColors.c_22C348,
            )),
      ),
    );
  }
}
