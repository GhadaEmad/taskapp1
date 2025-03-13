

import 'package:flutter/material.dart';

class CustomTextFormFiledWithTitle extends StatelessWidget {
  final String title;
  final String hintText;
  final Widget? suffixIcon;
  final void Function()? onTap;
  const CustomTextFormFiledWithTitle({super.key, required this.title, required this.hintText, this.suffixIcon,  this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        TextFormField(
          onTap:onTap ,

          decoration: InputDecoration(
              hintText: hintText,
              suffixIcon:suffixIcon ,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xff4E5AE8))
              )
          ),
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}
