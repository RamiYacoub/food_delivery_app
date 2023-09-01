class CategoryItem {
  final String id;
  final String name;
  final String imgUrl;

  CategoryItem({
    required this.id,
    required this.name,
    required this.imgUrl,
  });
}

List<CategoryItem> categories = [
  CategoryItem(id: '1', name: 'Burger', imgUrl: 'assets/images/burgerIcon.png'),
  CategoryItem(id: '2', name: 'Pizza', imgUrl: 'assets/images/pizzaIcon.png'),
  CategoryItem(id: '3', name: 'Pasta', imgUrl: 'assets/images/pastaIcon.png'),
  CategoryItem(
      id: '4', name: 'Chicken', imgUrl: 'assets/images/chickenIcon.png'),
  CategoryItem(id: '5', name: 'Drinks', imgUrl: 'assets/images/drinksIcon.png'),
  CategoryItem(id: '6', name: 'Beef', imgUrl: 'assets/images/beefIcon.png'),
];
