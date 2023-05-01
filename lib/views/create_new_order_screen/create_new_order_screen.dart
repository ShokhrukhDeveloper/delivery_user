import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/create_new_order_screen/widget/image_and_comment.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/style.dart';
import 'widget/LocationPick.dart';

class CreateNewOrderScreen extends StatefulWidget {
  const CreateNewOrderScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewOrderScreen> createState() => _CreateNewOrderScreenState();
}

class _CreateNewOrderScreenState extends State<CreateNewOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
          isMain: false,
          title: "Buyutrma yaratish",
          appbarColor: AppColors.primaryPR400),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    labelText: "Buyurtma nomi", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 7,
              ),
              const LocationPicker(),
              const SizedBox(
                height: 14,
              ),
              const ImageAndComment(),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Narxi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.all(7),
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.c_6BB3FA),
                  child: Center(
                    child: Text(
                      "Buyurtma qilish",
                      style: MyTextStyle.poppinsW700Regular16white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
