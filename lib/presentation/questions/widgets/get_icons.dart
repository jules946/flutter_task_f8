import 'package:flutter/material.dart';

// Function to get the appropriate icon for a category
IconData getIconForCategory(String category) {
  switch (category) {
    case 'General Knowledge':
      return Icons.book;
    case 'Science':
      return Icons.science;
    case 'History':
      return Icons.account_balance;
    case 'Geography':
      return Icons.map;
    default:
      return Icons.question_answer;
  }
}
