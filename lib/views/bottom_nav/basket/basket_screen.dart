import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GloabalAppBar(title: "Buyurtmalar tarixi", appbarColor: AppColors.c_870B9B)
    );
  }
}
