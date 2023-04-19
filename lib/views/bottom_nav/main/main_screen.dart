import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/completed_Item_screen/completed_item_screen.dart';
import 'package:delivery_user/views/create_new_order_screen/create_new_order_screen.dart';
import 'package:delivery_user/views/pending_items_screen/pending_items_screen.dart';
import 'package:delivery_user/views/returned_items/returned_items_screen.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const GlobalAppBar(
          title: "Assalom alekum: Shoxrux",
          appbarColor: AppColors.c_F9F9F9),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const CreateNewOrderScreen())  ),
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.all(12),
                  width: (MediaQuery.of(context).size.width-24)/2,
                  height:  ((MediaQuery.of(context).size.width-24)/2)*0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.c_6BB3FA,
                  ),
                  child: const Text("Yangi buyurtma yaratish",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins-Regular"
                    ),
                  ),

                ),
              ),

              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const CompletedItemsScreen())),
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.all(12),
                  width: (MediaQuery.of(context).size.width-24)/2,
                  height:  ((MediaQuery.of(context).size.width-24)/2)*0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff22C348),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Yakunlangan buyurtmalar",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins-Regular"
                        ),
                      ),
                      Text("12 ta",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Poppins-Regular",
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),)
                    ],
                  ),

                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const PendingItemsScreen())  ),
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.all(12),
                  width: (MediaQuery.of(context).size.width-24)/2,
                  height:  ((MediaQuery.of(context).size.width-24)/2)*0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffF9A825),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Yetkazilayotgan buyurtmalar",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins-Regular"
                        ),
                      ),
                      Text("12 ta",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Poppins-Regular",
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),)
                    ],
                  ),

                ),
              ),

              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const CancelledItemsScreen())  ),
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.all(12),
                  width: (MediaQuery.of(context).size.width-24)/2,
                  height:  ((MediaQuery.of(context).size.width-24)/2)*0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffF2271C),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Qaytarilgan buyurtmalar",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins-Regular"
                        ),
                      ),
                      Text("12 ta",
                        style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Poppins-Regular",
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),)
                    ],
                  ),

                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
