import 'package:delivery_app/widgets/orders_coupons_component.dart';
import 'package:delivery_app/widgets/profile_list_tile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 90,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/25/78/61/25786134576ce0344893b33a051160b1.jpg'),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Rami Yacoub',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Developer',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OrdersCouponsWidget(
                          title: 'Orders',
                          value: 10,
                        ),
                        SizedBox(
                          height: 45,
                          child: VerticalDivider(),
                        ),
                        OrdersCouponsWidget(
                          title: 'Coupons',
                          value: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    ProfileListTile(
                      leadingIcon: Icons.shopping_cart_outlined,
                      title: 'Orders',
                      nameOfPage: 'OrderPage',
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    ProfileListTile(
                      leadingIcon: Icons.card_giftcard,
                      title: 'Coupons',
                      nameOfPage: 'CouponsPage',
                    ),
                    Divider(
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
