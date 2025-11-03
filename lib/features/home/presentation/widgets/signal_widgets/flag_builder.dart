import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlagBuilder extends StatelessWidget {
  const FlagBuilder({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(url, width: 24.w, height: 24.h, fit: BoxFit.cover),
    );
  }
}
