import 'package:delivery_app/pages/custom_bottom_navbar.dart';
import 'package:delivery_app/widgets/product_details_property.dart';
import 'package:delivery_app/models/food_items.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class ProductDetails extends StatefulWidget {
  FoodItem foodItem;
  ProductDetails({super.key, required this.foodItem});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;
  late List<FoodItem> ordersHistory = [];
  void _decreaseQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity -= 1;
      }
    });
  }

  void _increaseQuantity() {
    setState(
      () => quantity += 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.foodItem.name),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.foodItem = widget.foodItem.copyWith(
                  isFavorite: !widget.foodItem.isFavorite,
                );
                final selectedFoodItem = listOfItems
                    .firstWhere((item) => item.id == widget.foodItem.id);
                final selectedFoodItemIndex =
                    listOfItems.indexOf(selectedFoodItem);
                listOfItems[selectedFoodItemIndex] = widget.foodItem;
              });
            },
            icon: Icon(
              widget.foodItem.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.deepOrange,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Image.asset(
                          widget.foodItem.imgUrl,
                          width: double.infinity,
                          height: 250,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 24.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.foodItem.name,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.foodItem.category,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 250, 247, 247),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: quantity > 1
                                          ? _decreaseQuantity
                                          : null,
                                      icon: const Icon(Icons.remove),
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(quantity.toString()),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    IconButton(
                                      onPressed: _increaseQuantity,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProductDetailsProperty(
                                title: 'Size',
                                value: widget.foodItem.size,
                              ),
                              const SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  thickness: 2.0,
                                ),
                              ),
                              ProductDetailsProperty(
                                title: 'Calories',
                                value: widget.foodItem.calories,
                              ),
                              const SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  thickness: 2.0,
                                ),
                              ),
                              ProductDetailsProperty(
                                title: 'Cooking',
                                value: widget.foodItem.cooking,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          ReadMoreText(
                            colorClickableText: Colors.red,
                            trimCollapsedText: 'Show more',
                            trimExpandedText: 'Show less',
                            trimLines: 8,
                            trimMode: TrimMode.Line,
                            widget.foodItem.description,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 18.0, end: 18.0, bottom: 8.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '\$ ${(widget.foodItem.price * quantity).toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // listOfOrders.add(widget.foodItem);
                        showAlertDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text('Checkout'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text("No!"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Yes!"),
      onPressed: () {
        listOfOrders.add(widget.foodItem);
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CustomBottomNavBar(),
        ));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text("Are you sure you want buy it?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
