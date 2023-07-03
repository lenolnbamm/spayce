import 'package:flutter/material.dart';
import 'package:spayce/shared/themes/app_colors.dart';
import 'package:spayce/shared/themes/app_data_styles.dart';
import 'package:spayce/shared/themes/app_images.dart';

class SocialLoginButton extends StatelessWidget {

  final VoidCallback onTap;

  const SocialLoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: const Border.fromBorderSide(
            BorderSide(color: AppColors.stroke),
          ),  
        ),
        child: Row(
          children: [
            Expanded(
              flex:1,
              // IMAGEM BOTÃO GOOGLE E LINHA DE SEPARAÇÃO 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,  
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Image.asset(AppImages.google, ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                  height: 56, 
                  width: 1, 
                  color: AppColors.stroke),
                ],
              ),
            ),
              
            Expanded (
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Google", 
                  style: TextStyles.buttonGray),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}