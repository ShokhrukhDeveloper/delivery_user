import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GloabalAppBar(
          title: "Assalom alekum: Shoxrux", appbarColor: AppColors.c_F9F9F9),
    );
  }
}
