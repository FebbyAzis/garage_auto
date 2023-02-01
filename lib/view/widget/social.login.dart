import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_auto/utils/global.colors.dart';
import 'package:ionicons/ionicons.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key?key}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            'Or sign in with',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
              fontSize: 18,
              ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          // width: MediaQuery.of(context).size.width * 0.6,
          child: Row(
            children: [
              // google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  
                    child: SvgPicture.asset('assets/images/google.svg',
                    height: 30,
                    ),
                    // icon: Icon(Ionicons.logo_google),
                    ),
              ),
              // facebook
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  
                    child: SvgPicture.asset('assets/images/facebook.svg',
                    height: 30,
                    ),
                    // icon: Icon(Ionicons.logo_google),
                    ),
              ),
              // twitter
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  
                    child: SvgPicture.asset('assets/images/twitter.svg',
                    height: 30,
                    ),
                    // icon: Icon(Ionicons.logo_google),
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}