import 'dart:io';

import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:doctor_mid/app/router.dart';


import 'package:doctor_mid/ui/screens/splash_screen.dart';


class AppWidget extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ConstantColor.primaryColor,
        platform: TargetPlatform.iOS,
      ),
      builder: (context, child) {
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      onGenerateRoute: AppRouter.generateRoute,
      home: 
      

         SplashScreen()
      
    );
  }

  /*  return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
            platform: TargetPlatform.iOS,
          ),
          builder: (context, child) {
            return MediaQuery(
              child: child,
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            );
          },
           onGenerateRoute: AppRouter.generateRoute,
          home: SplashScreen(),
        );
   
  } */

}
