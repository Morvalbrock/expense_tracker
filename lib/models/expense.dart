import 'package:uuid/uuid.dart';

//create the unic id from uuid pakage
const uuid = Uuid();

// create a enum

enum Category { food, travel, leisure, work }

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
}
