import 'package:currency_app/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsTopSectionCard extends StatelessWidget {
  const DetailsTopSectionCard({
    super.key,
    required this.title,
    required this.value,
    this.valueColor = Colors.white,
  });
  final String title;
  final String value;
  final Color valueColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: const Color(0xFF1A212B),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.style14Bold(color: Colors.white70),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: TextStyles.style18Bold(color: valueColor),
          ),
        ],
      ),
    );
  }
}
