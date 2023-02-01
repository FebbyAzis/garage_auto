import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal(
    {Key?key, 
    required this.controller, 
    required this.textInputType, 
    required this.obscure, 
    required this.text}) 
    : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3, left: 15),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
       
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
         hintText: text,
         border: InputBorder.none,
         contentPadding: const EdgeInsets.all(0),
         hintStyle: const TextStyle(
          height: 1,
         )
        ),
      ),
    );
  }
}