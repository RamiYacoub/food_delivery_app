import 'package:delivery_app/pages/coupons_page.dart';
import 'package:delivery_app/pages/orders_page.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String nameOfPage;

  const ProfileListTile({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.nameOfPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        final Map<String, WidgetBuilder> pageRoutes = {
          'OrderPage': (context) => const OrderPage(),
          'CouponsPage': (context) => const CouponsPage(),
        };

        if (pageRoutes.containsKey(nameOfPage)) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: pageRoutes[nameOfPage]!,
          ));
        }
      },
      leading: Icon(
        leadingIcon,
        size: 40,
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
      trailing: const Icon(
        Icons.arrow_forward,
        size: 20,
      ),
    );
  }
}
