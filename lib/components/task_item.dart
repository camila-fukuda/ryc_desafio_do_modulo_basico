import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, this.markAsDone, {super.key});
  final Task task;
  final Function(Task) markAsDone;

  @override
  Widget build(BuildContext context) {
    int daysLeft(Task task) {
      return task.limitDate.difference(DateTime.now()).inDays < 0
          ? 0
          : task.limitDate.difference(DateTime.now()).inDays;
    }

    return ListTile(
      tileColor: const Color.fromARGB(255, 228, 228, 228),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: task.done
                ? Theme.of(context).colorScheme.tertiary
                : daysLeft(task) > 0
                    ? const Color.fromRGBO(182, 182, 182, 1)
                    : Theme.of(context).colorScheme.error,
            width: 3),
        borderRadius: BorderRadius.circular(5),
      ),
      minVerticalPadding: 20,
      contentPadding: const EdgeInsets.all(0),
      trailing: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
        child: !task.done
            ? IconButton(
                color: daysLeft(task) > 0
                    ? const Color.fromRGBO(182, 182, 182, 1)
                    : Theme.of(context).colorScheme.error,
                iconSize: 35,
                onPressed: () {
                  markAsDone(task);
                },
                icon: const Icon(Icons.check_circle),
              )
            : const SizedBox(
                width: 1,
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
                  Text(
                    task.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      decoration: task.done
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    DateFormat('dd/MM/y').format(task.limitDate),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  task.done ? 'COMPLETED' : 'DAYS LEFT:',
                  style: const TextStyle(color: Colors.grey),
                ),
                !task.done
                    ? Text(
                        '${daysLeft(task)}',
                        style: const TextStyle(color: Colors.grey),
                      )
                    : const SizedBox(height: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
