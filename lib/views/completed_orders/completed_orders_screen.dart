import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

class CompletedOrdersScreen extends StatelessWidget {
  const CompletedOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
          title: "Yakunlang buyutrmalar", appbarColor: AppColors.greenG600),
    );
  }
}
