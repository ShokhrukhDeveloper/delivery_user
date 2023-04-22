import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/items.dart';
import 'package:flutter/material.dart';

import '../widgets/global_appbar.dart';

class PendingItemsScreen extends StatefulWidget {
  const PendingItemsScreen({Key? key}) : super(key: key);

  @override
  State<PendingItemsScreen> createState() => _PendingItemsScreenState();
}

class _PendingItemsScreenState extends State<PendingItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const GlobalAppBar(
        title: 'Yetkazilayotgan buyutrmalar',
        appbarColor: AppColors.c_F9A825,
        isMain: false,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: ListView.builder(
          itemCount: 15,
            itemBuilder: (c, i) => OrderItem(
                onTap: () {},
                startDate: "27/02/2021   14:02 ",
                title: "Nitro 5 Gaming Laptop - AN515 -54 - 70KK",
                endDate: "27/02/2021   14:02 ",
                price: "15000",
                statusColor: AppColors.c_F9A825,
                status: "status")),
      ),
    );
  }
}
