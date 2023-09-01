class FoodItem {
  final int id;
  final String name;
  final String url;
  final String estimatedTime;
  final int frequencyOfSelling;
  final double price;
  final String category;
  final bool isFavorite;

  const FoodItem({
    required this.id,
    required this.name,
    required this.url,
    required this.estimatedTime,
    required this.frequencyOfSelling,
    required this.price,
    required this.category,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    int? id,
    String? name,
    String? url,
    String? estimatedTime,
    int? frequencyOfSelling,
    double? price,
    String? category,
    bool? isFavorite,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      estimatedTime: estimatedTime ?? this.estimatedTime,
      frequencyOfSelling: frequencyOfSelling ?? this.frequencyOfSelling,
      price: price ?? this.price,
      category: category ?? this.category,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItem> listOfItems = [
  const FoodItem(
      id: 1,
      name: 'Beef Burger',
      url: 'assets/images/beef burger.png',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 4.5,
      category: 'Burger'),
  const FoodItem(
      id: 2,
      name: 'Lazania',
      url: 'assets/images/lazania.png',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 3.6,
      category: 'Pasta'),
  const FoodItem(
      id: 3,
      name: 'Cola',
      url: 'assets/images/cola.png',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 5,
      category: 'Drinks'),
  const FoodItem(
      id: 4,
      name: 'Broast',
      url: 'assets/images/broast.png',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 3.9,
      category: 'Chicken'),
  const FoodItem(
      id: 5,
      name: 'Steak',
      url: 'assets/images/steak.png',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 12.8,
      category: 'Beef'),
  const FoodItem(
      id: 6,
      name: 'Vegetables Pizza',
      url: 'assets/images/pizza.png',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 9.2,
      category: 'Pizza'),
];
