import 'package:flutter/material.dart';

class Category {
  String id;
  String name;
  Color color;

  Category({
    required this.id,
    required this.name,
    required this.color,
  }) {
    _categories.add(this);
  }

  // Convert a Category into a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'color': color.value,  // Store color as an integer
    };
  }

  // Create a Category from a Map
  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      name: map['name'] ?? '',
      color: Color(map['color']),
    );
  }

  // Static list of categories
  static final List<Category> _categories = [];

  static List<Category> get categories => _categories;
}