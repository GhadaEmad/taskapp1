

import 'package:flutter/material.dart';
import 'package:mytask/core/helpers/extentsions.dart';
import 'package:mytask/featurs/login/login_scree.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.welcomeInHome("Ghada"),style: AppTextStyle.fontStyle20Bold.copyWith(
                  color:AppColors.primaryColor
              ),),
              Text("Have a nice day",style: AppTextStyle.fontStyle20Bold.copyWith(
                  fontWeight: FontWeight.normal
              ),),



            ],),

        ),


        InkWell(
          onTap: (){
            context.push(LoginScreen());

          },
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor,width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover
                    ,image: Image.asset("assts/image/profil.jpeg").image)
            ),

          ),
        ),

      ],
    );
  }
}