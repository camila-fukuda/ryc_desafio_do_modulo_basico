import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/data/dummy_data.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task.dart';

class TaskList with ChangeNotifier {
  final List<Task> _taskList = dummyTasks;

  List<Task> get tasks => [..._taskList];

  void addTask(Map<String, Object> newTask) {
    String newId = Random().nextDouble().toString();

    while (_taskList.indexWhere((p) => p.id == newId) > 0) {
      newId = Random().nextDouble().toString();
    }

    final taskToAdd = Task(
      id: newId,
      title: newTask['title'] as String,
      description: newTask['description'] as String,
      limitDate: newTask['limitDate'] as DateTime,
    );

    _taskList.add(taskToAdd);

    notifyListeners();
  }

  int get taskCount {
    return _taskList.length;
  }
}
