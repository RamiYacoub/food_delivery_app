import 'package:delivery_app/models/food_items.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: listOfOrders.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Empty..',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: listOfOrders.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 80,
                  child: Card(
                    child: Center(
                      child: ListTile(
                        leading: Text(
                          listOfOrders[index].name,
                          style: const TextStyle(fontSize: 22.0),
                        ),
                        trailing: Text(
                          'value = ${listOfOrders[index].price.toString()}\$',
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
