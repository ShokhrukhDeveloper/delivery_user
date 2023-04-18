import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/views/returned_items/returned_items_screen.dart';
import 'package:delivery_user/views/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const GloabalAppBar(
          title: "Assalom alekum: Shoxrux", appbarColor: AppColors.c_F9F9F9),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const ReturnedItemsScreen())  ),
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.all(12),
                  width: (MediaQuery.of(context).size.width-24)/2,
                  height:  ((MediaQuery.of(context).size.width-24)/2)*0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff6BB3FA),
                  ),
                  child: Text("Yangi buyurtma yaratish",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins-Regular"
                    ),
                  ),

                ),
              ),

              Container(
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
                  children: [
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
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

              Container(
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
            ],
          ),

        ],
      ),
    );
  }
}
