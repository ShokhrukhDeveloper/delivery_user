import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

class AddNewOrderScreen extends StatelessWidget {
  const AddNewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GloabalAppBar(
          title: "Buyurtma yaratish", appbarColor: AppColors.primaryPR400),
    );
  }
}
