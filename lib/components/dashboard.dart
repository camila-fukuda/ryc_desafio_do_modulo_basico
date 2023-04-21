import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryc_desafio_do_modulo_basico/components/task_item.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task_list.dart';
import 'package:ryc_desafio_do_modulo_basico/models/user_info.dart';

class Dashboard extends StatelessWidget {
  final Function(String) onAddTaskPressed;

  const Dashboard({Key? key, required this.onAddTaskPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaskList>(context);
    final List<Task> taskList = provider.taskList;

    final titleController = TextEditingController();

    void markAsdone(Task task) {
      provider.completeTask(
          task, Provider.of<UserInfo>(context, listen: false));
    }

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: titleController,
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
                onPressed: () => onAddTaskPressed(titleController.text),
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
                child: TaskItem(taskList[index], markAsdone),
              );
            },
          ),
        ),
      ],
    );
  }
}
