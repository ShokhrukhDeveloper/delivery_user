import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

class DeleveredOrdersScreen extends StatelessWidget {
  const DeleveredOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
          title: "Yetkazilayotgan buyutrmalar",
          appbarColor: AppColors.yellowColor),
    );
  }
}
