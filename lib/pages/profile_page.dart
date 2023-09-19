import 'package:delivery_app/models/coupons.dart';
import 'package:delivery_app/models/food_items.dart';
import 'package:delivery_app/widgets/orders_coupons_component.dart';
import 'package:delivery_app/widgets/profile_list_tile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 90,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/25/78/61/25786134576ce0344893b33a051160b1.jpg'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text('Rami Yacoub',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Developer',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OrdersCouponsWidget(
                          title: 'Orders',
                          value:
                              listOfOrders.isNotEmpty ? listOfOrders.length : 0,
                        ),
                        const SizedBox(
                          height: 45,
                          child: VerticalDivider(),
                        ),
                        OrdersCouponsWidget(
                          title: 'Coupons',
                          value: coupons.isNotEmpty ? coupons.length : 0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    const ProfileListTile(
                      leadingIcon: Icons.shopping_cart_outlined,
                      title: 'Orders',
                      nameOfPage: 'OrderPage',
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    const ProfileListTile(
                      leadingIcon: Icons.card_giftcard,
                      title: 'Coupons',
                      nameOfPage: 'CouponsPage',
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
