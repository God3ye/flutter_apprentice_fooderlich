import 'package:flutter/painting.dart';

enum Importance {
  low,
  medium,
  high,
}

class GroceryItem {
  final String id;
  final String name;
  final Importance importance;
  final Color color;
  final int quality;
  final DateTime date;
  final bool isComplete;
  GroceryItem({
    required this.id,
    required this.name,
    required this.importance,
    required this.color,
    required this.quality,
    required this.date,
    required this.isComplete,
  });

  GroceryItem copyWith({
    String? id,
    String? name,
    Importance? importance,
    Color? color,
    int? quality,
    DateTime? date,
    bool? isComplete = false,
  }) {
    return GroceryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      importance: importance ?? this.importance,
      color: color ?? this.color,
      quality: quality ?? this.quality,
      date: date ?? this.date,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
