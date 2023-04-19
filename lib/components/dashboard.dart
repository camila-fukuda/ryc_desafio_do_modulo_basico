import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/components/task_item.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task.dart';

class Dashboard extends StatelessWidget {
  final Function() onAddTaskPressed;
  final List<Task> taskList;

  const Dashboard(this.taskList, this.onAddTaskPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  helperText: 'Type the name of the new task.',
                  label: const Text('New Task'),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 197, 197, 197),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: IconButton(
                iconSize: 50,
                icon: const Icon(
                  Icons.add_circle_outlined,
                ),
                color: Theme.of(context).colorScheme.secondary,
                onPressed: onAddTaskPressed,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: Divider(),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: taskList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TaskItem(taskList[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
