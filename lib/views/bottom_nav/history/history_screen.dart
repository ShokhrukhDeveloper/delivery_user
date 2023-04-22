import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

import '../../widgets/items.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        isMain: true,
        title: "Buyurtmalar tarixi",
        appbarColor: AppColors.c_870B9B,
        titleColor: Colors.white,
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 11, right: 11, top: 5),
          child: ListView.builder(
              itemCount: 15,
              itemBuilder: (c, i) => OrderItem(
                  onTap: () {},
                  startDate: "27/02/2021   14:02 ",
                  title: "Nitro 5 Gaming Laptop - AN515 -54 - 70KK",
                  endDate: "27/02/2021   14:02 ",
                  price: "15000",
                  statusColor:
                      i.isOdd ? AppColors.c_F9A825 : AppColors.c_F2271C,
                  status: i.isEven ? "qaytarilgan" : "yo'lda"))),
    );
  }
}
