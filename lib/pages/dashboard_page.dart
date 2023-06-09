import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryc_desafio_do_modulo_basico/components/dashboard.dart';
import 'package:ryc_desafio_do_modulo_basico/components/task_form.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task_list.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _showForm = false;
  String newTaskTitle = '';

  void _toggleForm() {
    setState(() {
      _showForm = !_showForm;
    });
  }

  void _addNewTask(String title) {
    setState(() {
      newTaskTitle = title;
      _showForm = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Center(
          child: _showForm
              ? TaskForm(_toggleForm, newTaskTitle)
              : Dashboard(onAddTaskPressed: _addNewTask),
        ),
      ),
    );
  }
}
