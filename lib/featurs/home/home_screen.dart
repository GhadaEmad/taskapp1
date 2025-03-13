import 'package:flutter/material.dart';
import 'package:mytask/featurs/home/widgets/data_and_add_btn.dart';
import 'package:mytask/featurs/home/widgets/empty_task_list.dart';
import 'package:mytask/featurs/home/widgets/filter_days_row.dart';
import 'package:mytask/featurs/home/widgets/home_app_bar.dart';
import 'package:mytask/featurs/home/widgets/tasks_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            children: [
              HomeAppBar(),
              SizedBox(
                height: 20,
              ),
              DateAndAddBtn(),
              SizedBox(
                height: 20,
              ),
              FilterDaysRow(),
              SizedBox(
                height: 20,
              ),
              false?EmptyTaskList() :TasksListView()
            ],
          ),
        ),
      ),
    );
  }
}



