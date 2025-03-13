import 'package:flutter/material.dart';


import '../../../core/utils/app_text_style.dart';


class EmptyTaskList extends StatelessWidget {
  const EmptyTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assts/image/empty.gif",height: 300,width: 300,fit: BoxFit.contain,),
        Text("Empty Tasks",style: AppTextStyle.fontStyle17White.copyWith(
            color: Colors.grey
        ),)
      ],
    );
  }
}