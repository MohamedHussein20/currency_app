import 'package:currency_app/core/resources/styles.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  VoidCallback? onTap;

  CustomDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: Icon(icon, color: Colors.black87),
        title: Text(
          title,
          style: TextStyles.style16SemiBold(color: Colors.black87),
        ),
        onTap: onTap,
      ),
    );
  }
}
