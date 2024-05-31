import 'shopping_item.dart';

abstract class ItemList {
  List<ShoppingItem> items = [];

  // Method to add an item
  void addItem(ShoppingItem item) {
    items.add(item);
  }

  // Method to remove an item
  void removeItem(String itemId) {
    items.removeWhere((item) => item.id == itemId);
  }

  // Method to retrieve an item by ID
  ShoppingItem? getItemById(String itemId) {
    return items.firstWhere((item) => item.id == itemId);
  }
}
