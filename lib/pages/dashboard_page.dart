import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/components/dashboard.dart';
import 'package:ryc_desafio_do_modulo_basico/components/task_form.dart';
import 'package:ryc_desafio_do_modulo_basico/data/dummy_data.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Task> tasks = dummyTasks;

  bool _showForm = false;
  String newTaskTitle = '';

  void _toggleForm() {
    setState(() {
      print('toggle');
      _showForm = !_showForm;
    });
  }

  void _addNewTask(String title) {
    setState(() {
      newTaskTitle = title;
      print('set new title : $title');
      print('toggle');
      _showForm = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: _showForm
            ? TaskForm(_toggleForm)
            : Dashboard(
                onAddTaskPressed: _addNewTask,
                taskList: tasks,
              ),
      ),
    );
  }
}
