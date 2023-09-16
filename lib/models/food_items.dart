class FoodItem {
  final int id;
  final String name;
  final String imgUrl;
  final String estimatedTime;
  final int frequencyOfSelling;
  final double price;
  final String category;
  final bool isFavorite;
  final String size;
  final String calories;
  final String cooking;
  final String description;

  const FoodItem({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.estimatedTime,
    required this.frequencyOfSelling,
    required this.price,
    required this.category,
    this.isFavorite = false,
    required this.size,
    required this.calories,
    required this.cooking,
    required this.description,
  });

  FoodItem copyWith({
    int? id,
    String? name,
    String? imgUrl,
    String? estimatedTime,
    int? frequencyOfSelling,
    double? price,
    String? category,
    bool? isFavorite,
    String? size,
    String? calories,
    String? cooking,
    String? description,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      estimatedTime: estimatedTime ?? this.estimatedTime,
      frequencyOfSelling: frequencyOfSelling ?? this.frequencyOfSelling,
      price: price ?? this.price,
      category: category ?? this.category,
      isFavorite: isFavorite ?? this.isFavorite,
      size: size ?? this.size,
      calories: calories ?? this.calories,
      cooking: cooking ?? this.cooking,
      description: description ?? this.description,
    );
  }
}

List<FoodItem> listOfItems = [
  const FoodItem(
    id: 1,
    name: 'Beef Burger',
    imgUrl: 'assets/images/beef burger.png',
    estimatedTime: '30',
    frequencyOfSelling: 120,
    price: 4.5,
    category: 'Burger',
    size: 'Large',
    calories: '150 Kcal',
    cooking: '20-25 Mins',
    description:
        'Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger Burger ',
  ),
  const FoodItem(
    id: 2,
    name: 'Lazania',
    imgUrl: 'assets/images/lazania.png',
    estimatedTime: '30',
    frequencyOfSelling: 120,
    price: 3.6,
    category: 'Pasta',
    size: 'Medium',
    calories: '130 Kcal',
    cooking: '15-25 Mins',
    description:
        'Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta Pasta ',
  ),
  const FoodItem(
    id: 3,
    name: 'Cola',
    imgUrl: 'assets/images/cola.png',
    estimatedTime: '30',
    frequencyOfSelling: 120,
    price: 5,
    category: 'Drinks',
    size: 'small',
    calories: '130 Kcal',
    cooking: '10-15 Mins',
    description:
        'Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks Drinks ',
  ),
  const FoodItem(
    id: 4,
    name: 'Broast',
    imgUrl: 'assets/images/broast.png',
    estimatedTime: '30',
    frequencyOfSelling: 120,
    price: 3.9,
    category: 'Chicken',
    size: 'Medium',
    calories: '155 Kcal',
    cooking: '10-18 Mins',
    description:
        'Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken Chicken ',
  ),
  const FoodItem(
    id: 5,
    name: 'Steak',
    imgUrl: 'assets/images/steak.png',
    estimatedTime: '30',
    frequencyOfSelling: 120,
    price: 12.8,
    category: 'Beef',
    size: 'Large',
    calories: '200 Kcal',
    cooking: '20-22 Mins',
    description:
        'Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef Beef ',
  ),
  const FoodItem(
    id: 6,
    name: 'Vegetables Pizza',
    imgUrl: 'assets/images/pizza.png',
    estimatedTime: '30',
    frequencyOfSelling: 120,
    price: 9.2,
    category: 'Pizza',
    size: 'small',
    calories: '100 Kcal',
    cooking: '10-12 Mins',
    description:
        'Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza Pizza ',
  ),
  
];
