import 'package:delivery_app/widgets/product_details_property.dart';
import 'package:flutter/material.dart';

import '../models/food_items.dart';

class ProductDetails extends StatefulWidget {
  final FoodItem foodItem;
  const ProductDetails({super.key, required this.foodItem});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;

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
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProductDetailsProoerty(
                                title: 'Size',
                                value: 'Medium',
                              ),
                              SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  thickness: 2.0,
                                ),
                              ),
                              ProductDetailsProoerty(
                                title: 'Calories',
                                value: '150 KCal',
                              ),
                              SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  thickness: 2.0,
                                ),
                              ),
                              ProductDetailsProoerty(
                                title: 'Cooking',
                                value: '5-10 Mins',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          const Text(
                            'hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe hahaha hohoho hehehe ',
                            style: TextStyle(
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text('Checkout'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
