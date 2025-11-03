import 'package:currency_app/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsRow extends StatelessWidget {
  final String title;
  final String value;

  const DetailsRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyles.style14Bold(color: Colors.white70)),
          Text(
            value,
            style: TextStyles.style14SemiBold(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
