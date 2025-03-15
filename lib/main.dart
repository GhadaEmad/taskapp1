import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mytask/taskati_app.dart';
import 'core/models/task_model.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('tasks');

  runApp(const TaskatiApp());
}
