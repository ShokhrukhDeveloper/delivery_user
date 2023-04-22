import 'dart:typed_data';

import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/utils/style.dart';
import 'package:delivery_user/views/widgets/imag_shower.dart';
import 'package:delivery_user/views/widgets/map_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
class LocationPicker extends StatefulWidget {
  const LocationPicker({Key? key}) : super(key: key);

  @override
  State<LocationPicker> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  GeoPoint? geoPoint1;
  GeoPoint? geoPoint2;
  Uint8List? image1;
  Uint8List? image2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
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
          InkWell(
            onTap: ()async{
              var result =await  showModalBottomSheet<LocationItem?>(
                  enableDrag: false,
                  context: context, builder: (e)=>const LocationPickerBottomSheet());
              setState(() {

              });
              if(result !=null){
                geoPoint1=result.firstGeopint;
                image1=result.image;
              }
            },
            child: Row(
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
                      // Text("Navoiy viloyati, Karmana tumani, Yangibozor 42-do’kon",
                      // style: MyTextStyle.poppinsW400Regular,
                      // ),

                    ],
                  ),
                ),
                InkWell(
                  onTap:image1!=null? ()=>showDialog(context: context, builder: (c)=>ImageViewer(img: image1!)):null,
                  child: Container(
                    width: 111,
                    height: 80,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      image: image1!=null? DecorationImage(image: MemoryImage(image1!,),fit: BoxFit.cover):null,
                      color: AppColors.c_6BB3FA
                    ),
                    child: image1!=null?null: const Icon(Icons.location_disabled,size: 56,color: Colors.white,),

                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: ()async{
              var result =await  showModalBottomSheet<LocationItem?>(
                  enableDrag: false,
                  context: context, builder: (e)=>const LocationPickerBottomSheet());
              setState(() {

              });
              if(result !=null){
                geoPoint2=result.firstGeopint;
                image2=result.image;
              }
            },
            child: Row(
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
                    ],
                  ),
                ),
                Container(
                  width: 111,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: image2!=null? DecorationImage(image: MemoryImage(image2!,),fit: BoxFit.cover):null,
                      color: AppColors.c_6BB3FA
                  ),
                  child:  image2!=null?null: const Icon(Icons.location_disabled,size: 56,color: Colors.white,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
