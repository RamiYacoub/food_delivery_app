import 'package:delivery_app/models/category_item.dart';
import 'package:delivery_app/pages/product_details.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/food_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? currentCategoryIndex;
  late List<FoodItem> filteredFood;

  @override
  void initState() {
    super.initState();
    filteredFood = listOfItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.menu),
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              'Cairo, Egypt',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.notifications),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/images/banner.png',
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 15.0),
                      child: Icon(
                        Icons.search,
                        size: 45,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: '  Find your food ...',
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16.0),
                        onTap: () {
                          setState(() {
                            if (currentCategoryIndex == null ||
                                currentCategoryIndex != index) {
                              currentCategoryIndex = index;
                            } else {
                              currentCategoryIndex = null;
                              filteredFood = listOfItems;
                            }
                          });
                          if (currentCategoryIndex != null) {
                            final selectedCategory =
                                categories[currentCategoryIndex!];
                            filteredFood = listOfItems
                                .where((foodItem) =>
                                    foodItem.category == selectedCategory.name)
                                .toList();
                          }
                        },
                        child: Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: index == currentCategoryIndex
                                  ? Colors.orange[800]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  categories[index].imgUrl,
                                  height: 60,
                                  width: 50,
                                  color: index == currentCategoryIndex
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Text(
                                  categories[index].name,
                                  style: TextStyle(
                                    color: index == currentCategoryIndex
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 230,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  shrinkWrap: true,
                  itemCount: filteredFood.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          foodItem: filteredFood[index],
                        ),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: SizedBox(
                                  width: 120,
                                  child: ClipRRect(
                                    child: Image.asset(
                                      filteredFood[index].imgUrl,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                filteredFood[index].name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${filteredFood[index].estimatedTime} Min  |  ${filteredFood[index].frequencyOfSelling} Sell',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 139, 139, 139),
                                ),
                              ),
                              Text(
                                '\$ ${filteredFood[index].price}',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 235, 112, 30),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          PositionedDirectional(
                            top: 0,
                            end: 0,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    filteredFood[index] = filteredFood[index]
                                        .copyWith(
                                            isFavorite: !filteredFood[index]
                                                .isFavorite);
                                    final selectedFoodItem =
                                        listOfItems.firstWhere((item) =>
                                            item.id == filteredFood[index].id);
                                    final selectedFoodItemIndex =
                                        listOfItems.indexOf(selectedFoodItem);
                                    listOfItems[selectedFoodItemIndex] =
                                        filteredFood[index];
                                  });
                                },
                                icon: Icon(
                                  filteredFood[index].isFavorite == false
                                      ? Icons.favorite_border
                                      : Icons.favorite,
                                  color: Colors.deepOrange,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
