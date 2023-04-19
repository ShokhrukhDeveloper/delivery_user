import 'package:delivery_user/utils/style.dart';
import 'package:flutter/material.dart';
class LocationPicker extends StatefulWidget {
  const LocationPicker({Key? key}) : super(key: key);

  @override
  State<LocationPicker> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Manzil-1dan:",
                    style: MyTextStyle.poppinsW600Regular15,
                    ),
                    Text("Navoiy viloyati, Karmana tumani, Yangibozor 42-do’kon",
                    style: MyTextStyle.poppinsW400Regular,
                    ),

                  ],
                ),
              ),
              Container(
                width: 111,
                height: 80,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  color: Colors.blueGrey
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Manzil-2gacha:",
                      style: MyTextStyle.poppinsW600Regular15,
                    ),
                    Text("Navoiy viloyati, Karmana tumani, Yangibozor 42-do’kon",
                      style: MyTextStyle.poppinsW400Regular,
                    ),

                  ],
                ),
              ),
              Container(
                width: 111,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
