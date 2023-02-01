// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:garage_auto/utils/global.colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key?key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print ('Login');
      },
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10
              )
            ]
          ),
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}