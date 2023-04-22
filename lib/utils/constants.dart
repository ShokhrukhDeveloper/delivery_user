import 'package:delivery_user/utils/colors.dart';
import 'package:flutter/material.dart';

List<String> allTitles = [
  "Yangi buyurtma \nyaratish",
  "Yakunlangan \nbuyurtmalar",
  "Yetkazilayotgan \nbuyurtmalar",
  "Qaytarilgan \nbuyurmalar"
];

List<Color> allColors = [
  AppColors.primaryPR400,
  AppColors.greenG600,
  AppColors.yellowColor,
  AppColors.c_F2271C
];

List<String> routeNames = [
  addOrderScreen,
  completedOrdersScreen,
  deleveredOrdersScreen,
  returnedOrdersScreen
];

const String splashScreen = "/";
const String addOrderScreen = "/addOrderScreen";
const String completedOrdersScreen = "/completedOrdersScreen";
const String deleveredOrdersScreen = "/deleveredOrdersScreen";
const String returnedOrdersScreen = "/returnedOrdersScreen";
const String bottomNavbar = "/bottomNavbar";



