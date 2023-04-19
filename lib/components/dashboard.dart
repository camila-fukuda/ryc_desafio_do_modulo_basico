import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final Function() onAddTaskPressed;

  const Dashboard(this.onAddTaskPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAddTaskPressed,
      child: const Text('Add Task'),
    );
  }
}
