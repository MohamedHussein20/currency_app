import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration: const BoxDecoration(
        color: Colors.teal,
      ),
      accountName: Text(
        "sagha online",
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
      ),
      accountEmail: const Text("saghaonline@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(
          "S",
          style: TextStyle(fontSize: 28.sp, color: Colors.teal),
        ),
      ),
    );
  }
}
