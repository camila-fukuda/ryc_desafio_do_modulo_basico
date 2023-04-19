import 'package:flutter/material.dart';

class Task with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final DateTime limitDate;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.limitDate,
  });
}
