import 'package:flutter/material.dart';

class Task with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final DateTime limitDate;
  bool done;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.limitDate,
    this.done = false,
  });
}
