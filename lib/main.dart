import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_utills_package_app/HomeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return const MaterialApp(
          title: "Screen Utill package",
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },

      /// ========= Put here the Figma screen size ================
      designSize: const Size(360, 780),
    );
  }
}
