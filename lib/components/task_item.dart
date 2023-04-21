import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});
  final Task task;

  @override
  Widget build(BuildContext context) {
    int daysLeft(Task task) {
      print('TaskItem limitDate ${task.limitDate}');
      return DateTime.now().difference(task.limitDate).inDays < 0
          ? 0
          : DateTime.now().difference(task.limitDate).inDays;
    }

    return ListTile(
      tileColor: const Color.fromARGB(255, 228, 228, 228),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: daysLeft(task) > 0
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context).colorScheme.error,
            width: 3),
        borderRadius: BorderRadius.circular(5),
      ),
      minVerticalPadding: 20,
      contentPadding: const EdgeInsets.all(0),
      trailing: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
        child: IconButton(
          color: daysLeft(task) > 0
              ? Theme.of(context).colorScheme.tertiary
              : Theme.of(context).colorScheme.error,
          iconSize: 35,
          onPressed: () {
            print('pressed');
          },
          icon: const Icon(Icons.check_circle),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(task.title,
                      overflow: TextOverflow.ellipsis, maxLines: 2),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'DAYS LEFT',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '11',
                  // '${daysLeft(task)}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
