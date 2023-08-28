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
  CategoryItem(id: '1', name: 'Burger', imgUrl: 'assets/images/burger.png'),
  CategoryItem(id: '2', name: 'Pizza', imgUrl: 'assets/images/pizza.png'),
  CategoryItem(id: '3', name: 'Pasta', imgUrl: 'assets/images/pasta.png'),
  CategoryItem(id: '4', name: 'Chicken', imgUrl: 'assets/images/chicken.png'),
  CategoryItem(id: '5', name: 'Drinks', imgUrl: 'assets/images/drinks.png'),
  CategoryItem(id: '6', name: 'beef', imgUrl: 'assets/images/beef.png'),
];
