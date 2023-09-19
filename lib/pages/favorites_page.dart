import 'package:delivery_app/models/food_items.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const FavoritesPage({Key? key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoriteItems = listOfItems.where((item) => item.isFavorite).toList();

    return Container(
      color: Colors.white,
      
      child: favoriteItems.isEmpty
          ? const Center(
              child: Text(
                'Empty...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                ),
              ),
            )
          : ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.asset(
                        favoriteItems[index].imgUrl,
                        height: 100,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        favoriteItems[index].name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '${favoriteItems[index].category} - \$ ${favoriteItems[index].price}',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            favoriteItems[index] = favoriteItems[index]
                                .copyWith(
                                    isFavorite:
                                        !favoriteItems[index].isFavorite);
                            final selectedFoodItem = listOfItems.firstWhere(
                                (item) => item.id == favoriteItems[index].id);
                            final selectedFoodItemIndex =
                                listOfItems.indexOf(selectedFoodItem);
                            listOfItems[selectedFoodItemIndex] =
                                favoriteItems[index];
                          });
                        },
                        icon: const Icon(Icons.favorite),
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
