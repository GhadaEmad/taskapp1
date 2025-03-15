

import 'package:flutter/material.dart';
import 'package:mytask/featurs/task/widgets/custom_text_form_filed_with_title.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios,color: Color(0xff4E5AE8),)),
        centerTitle: true,
        title: Text("Add Task",style: TextStyle(color: Color(0xff4E5AE8)),),
      ),
       body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomTextFormFiledWithTitle(
    hintText: "Enter title here",
    title: "Title",
    ),
      CustomTextFormFiledWithTitle(
    hintText: "Enter note here",
    title: "Note",
    ),
      CustomTextFormFiledWithTitle(
    onTap: (){
    showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2026,2),


    );

    },
    hintText: "12/2/2020",
    title: "Date",
    suffixIcon: Icon(Icons.date_range),
    ),
    ],
    ),
    ),
    );
  }
}
