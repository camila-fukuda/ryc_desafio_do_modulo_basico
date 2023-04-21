import 'package:flutter/material.dart';

class Reward {
  final String id;
  final String name;
  final String description;
  final int price;
  final int livesToRestore;
  final Icon icon;

  Reward({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.livesToRestore,
    required this.icon,
  });
}
