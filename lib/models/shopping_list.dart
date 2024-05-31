import 'package:shopping_list_app/models/user.dart';

import 'item_list.dart';
import 'shopping_item.dart';

class ShoppingList extends ItemList {
  String id;
  String name;
  List<String> sharedWith; // User IDs
  DateTime lastUpdatedDate;
  User lastUpdatedUser;
  List<ShoppingItem> deletedItems;

  ShoppingList({
    required this.id,
    required this.name,
    required List<ShoppingItem> items, // Include items here
    required this.sharedWith,
    required this.lastUpdatedDate,
    required this.lastUpdatedUser,
    required this.deletedItems,
  }) : super();

  // Converting ShoppingList to Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'items': items
          .map((item) => item.toMap())
          .toList(), // Access items from the superclass
      'sharedWith': sharedWith,
      'lastUpdatedDate': lastUpdatedDate,
      'lastUpdatedUser':
          lastUpdatedUser.toMap(), // Assuming User has a toMap() method
      'deletedItems': deletedItems.map((item) => item.toMap()).toList(),
    };
  }
}
