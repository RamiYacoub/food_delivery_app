import 'food_items.dart';

class Order {
  final FoodItem foodItem;
  final int quantity;

  Order({
    required this.foodItem,
    required this.quantity,
  });
}
