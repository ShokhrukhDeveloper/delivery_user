import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

import 'widget/LocationPick.dart';
class CreateNewOrderScreen extends StatefulWidget {
  const CreateNewOrderScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewOrderScreen> createState() => _CreateNewOrderScreenState();
}

class _CreateNewOrderScreenState extends State<CreateNewOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: GlobalAppBar(title: "Buyutrma yaratish", appbarColor: AppColors.c_6BB3FA),
      body: Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
      child: SingleChildScrollView(
        child: Column(
          children:  const [
            TextField(
              decoration: InputDecoration(
                labelText: "Buyurtma nomi",
                border: OutlineInputBorder()
              ),

            ),
            SizedBox(height: 7,),
            LocationPicker()
          ],
        ),
      ),
      ),
    );
  }
}
