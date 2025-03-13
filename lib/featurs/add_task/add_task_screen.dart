import 'package:flutter/material.dart';
import 'package:mytask/featurs/add_task/widgets/custom_create_task_and_color.dart';
import 'package:mytask/featurs/add_task/widgets/custom_text_form_field_with_title.dart';
import 'package:mytask/featurs/add_task/widgets/custom_time_with_title.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_text_style.dart';


class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: AppColors.primaryColor
        ),
        centerTitle: true,
        title: Text("Add Task",style: AppTextStyle.fontStyle20Bold.copyWith(
            color: AppColors.primaryColor
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormFieldWithTitle(
                hintText: "Enter title here",
                title: "Title",
              ),
              CustomTextFormFieldWithTitle(
                hintText: "Enter note here",
                title: "Note",
              ),
              CustomTextFormFieldWithTitle(
                onTap: (){
                  showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2026,2),
          
          
                  );
          
                },
                hintText: "12/2/2020",
                title: "Date",
                readOnly: true,
                suffixIcon: Icon(Icons.date_range),
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          Expanded(
            child: CustomTimeWithTitle(onTap: (){
              showTimePicker(context: context, initialTime: TimeOfDay.now());
            },
            
            title:" Start Time", hintText:"03:11 Am", readOnly: true,suffixIcon: Icon(Icons.access_time),),
          ),
                 SizedBox(width: 20,),
          Expanded(
            child: CustomTimeWithTitle(onTap: (){
              showTimePicker(context: context, initialTime: TimeOfDay.now());
            },
                
              title:" End Time", hintText:"03:26 Am", readOnly: true,suffixIcon: Icon(Icons.access_time),),
          ),
              
                ],
              ),
              SizedBox(height: 10,),
              CustomCreateTaskAndColor()
          
            ],
          ),
        ),
      ),
    );
  }
}