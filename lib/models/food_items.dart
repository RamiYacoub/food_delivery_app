class FoodItem {
  final String name;
  final String url;
  final String estimatedTime;
  final int frequencyOfSelling;
  final double price;
  final String category;

  const FoodItem(
      {required this.name,
      required this.url,
      required this.estimatedTime,
      required this.frequencyOfSelling,
      required this.price,
      required this.category});
}

List<FoodItem> listOfItems = [
  const FoodItem(
      name: 'Beef Burger',
      url:
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 5.40,
      category: 'Burger'),
  const FoodItem(
      name: 'Beef Burger',
      url:
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 5.40,
      category: 'Burger'),
  const FoodItem(
      name: 'Beef Burger',
      url:
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 5.40,
      category: 'Drinks'),
  const FoodItem(
      name: 'Beef Burger',
      url:
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 5.40,
      category: 'Beef'),
  const FoodItem(
      name: 'Beef Burger',
      url:
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 5.40,
      category: 'Pasta'),
  const FoodItem(
      name: 'Beef Burger',
      url:
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      estimatedTime: '30',
      frequencyOfSelling: 120,
      price: 5.40,
      category: 'Pizza'),
];
