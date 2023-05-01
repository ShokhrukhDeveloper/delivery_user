import 'package:delivery_user/utils/constants.dart';
import 'package:delivery_user/views/bottom_nav/bottom_navbar.dart';
import 'package:delivery_user/views/completed_orders/completed_orders_screen.dart';
import 'package:delivery_user/views/create_new_order_screen/create_new_order_screen.dart';
import 'package:delivery_user/views/delevered_orders/delevered_orders_screen.dart';
import 'package:delivery_user/views/returned_orders/returned_orders_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case splashScreen:
      //   return navigateTo(SplashScreen());
      case addOrderScreen:
        return navigateTo(CreateNewOrderScreen());
      case completedOrdersScreen:
        return navigateTo(CompletedOrdersScreen());
      case deleveredOrdersScreen:
        return navigateTo(DeleveredOrdersScreen());
      case returnedOrdersScreen:
        return navigateTo(ReturnedItemsScreen());
      
      
      case bottomNavbar:
        return navigateTo(BottomNavBar());
      
      
      default:
        return navigateTo(
          Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

MaterialPageRoute navigateTo(Widget widget) => MaterialPageRoute(
      builder: (context) => widget,
    );
