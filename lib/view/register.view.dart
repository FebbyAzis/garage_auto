import 'package:flutter/material.dart';
import 'package:garage_auto/utils/global.colors.dart';
import 'package:garage_auto/view/widget/button.global.dart';
import 'package:garage_auto/view/widget/social.login.dart';
import 'package:garage_auto/view/widget/text.form.global.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  RegisterView ({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
        child: Container (
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                    'assets/images/secondary_logo.png',
                    height: 100,
                    width: 250,
                  ),
              ),
                  const SizedBox(height: 50),
                  Text(
                    
                    'Login to your account',
                    style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                const SizedBox(height: 20),
                // input email
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                // password input
                TextFormGlobal(
                  controller: passwordController, 
                  textInputType: TextInputType.text, 
                  obscure: true, 
                  text: 'Password',
                   ),
                   const SizedBox(height: 10),
                // confirm password input
                TextFormGlobal(
                  controller: confirmpasswordController, 
                  textInputType: TextInputType.text, 
                  obscure: true, 
                  text: 'ConfirmPassword',
                   ),
                   const SizedBox(height: 20),
                   ButtonGlobal(),
                   const SizedBox(height: 30),
                   SocialLogin(),
            ],
          ),
        ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              ),
              InkWell(
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: GlobalColors.mainColor
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}