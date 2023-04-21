import 'package:flutter/material.dart';

class Reward {
  final String id;
  final String name;
  final int price;
  final int livesToRestore;
  final Icon icon;

  Reward({
    required this.id,
    required this.name,
    required this.price,
    required this.livesToRestore,
    required this.icon,
  });
}
