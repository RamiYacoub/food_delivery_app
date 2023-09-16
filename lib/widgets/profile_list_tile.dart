import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  const ProfileListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
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
