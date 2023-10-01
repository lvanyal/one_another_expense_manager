import 'package:copilot/model/budget.dart';
import 'package:copilot/model/expense.dart';

class DashboardData {
  // Selected month.
  final DateTime selectedMonth;

  // Budget.
  final Budget budget;

  // Spent money.
  final double spentMoney;

  // List of expenses.
  final List<Expense> expenses;

  DashboardData(
      {required this.selectedMonth,
      required this.budget,
      required this.spentMoney,
      required this.expenses});
}