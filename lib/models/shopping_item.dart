import 'category.dart';

class ShoppingItem {
  String id;
  String name;
  bool isChecked;
  Category category;

  ShoppingItem({
    required this.id,
    required this.name,
    required this.isChecked,
    required this.category,
  });

  // Convert a ShoppingItem into a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isChecked': isChecked,
      'category': category.toMap(),
    };
  }

  // Create a ShoppingItem from a Map
  factory ShoppingItem.fromMap(Map<String, dynamic> map) {
    return ShoppingItem(
      id: map['id'],
      name: map['name'] ?? '',
      isChecked: map['isChecked'] ?? false,
      category: Category.fromMap(map['category']),
    );
  }
}
