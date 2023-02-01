import 'dart:async';

import 'package:flutter/material.dart';
import 'package:garage_auto/utils/global.colors.dart';
import 'package:garage_auto/view/login.view.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView ({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: 
        Image.asset(
        'assets/images/logo_white.png',
        height: Get.height * 0.5,
        ),
      )
    );
  }
}
