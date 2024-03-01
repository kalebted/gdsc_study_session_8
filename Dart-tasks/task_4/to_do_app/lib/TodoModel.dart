import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {
  String taskName = "";
  String dueDate = "";
  String taskDescription = "";

  String? getName(){
    return taskName;
  }
  String? getDueDate(){
    return dueDate;
  }
  String? getDescription(){
    return taskDescription;
  }
}