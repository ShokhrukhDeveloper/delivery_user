// <<<<<<< HEAD
import 'package:delivery_user/views/bottom_nav/bottom_navbar.dart';
// =======
// import 'package:delivery_user/view/login_view.dart';
// >>>>>>> ca47965444b9ac964d5cdfbc1ae5475f88e7a0c0
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
// <<<<<<< HEAD
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavBar()
        );
      },
    );
  }
} 
// =======
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:  LoginView(),
//     );
//   }
// }
// >>>>>>> ca47965444b9ac964d5cdfbc1ae5475f88e7a0c0
