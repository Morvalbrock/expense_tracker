import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat().add_yMd();

//create the unic id from uuid pakage
const uuid = Uuid();

// create a enum

enum Category { food, travel, leisure, work }

//create a icon dynamicaly

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
    //initializing the data for the constructor
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get dateformat {
    return formatter.format(date);
  }
}
