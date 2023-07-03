import 'package:flutter/material.dart';
import 'package:spayce/shared/themes/app_colors.dart';
import 'package:spayce/shared/themes/app_images.dart';
import 'package:spayce/shared/themes/app_data_styles.dart';
import 'package:spayce/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width, 
              height: size.height*0.39,
              color: AppColors.primary,
            ),
            Positioned(
              top: -70,
              left: 10, 
              right: 0, 
              child: Image.asset(AppImages.personn)
            ),
            Positioned(
              bottom: size.height*0.04,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logoMini),
                  Padding(
                    padding: const EdgeInsets.only(top:24, left:70, right: 70),
                    child: Text("Organize seus boletos em um só lugar", 
                    textAlign: TextAlign.center,
                    style: TextStyles.titleHome),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40, 
                      right: 40, 
                      top: 40),
                    child: SocialLoginButton(onTap: () { 

                     },),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}