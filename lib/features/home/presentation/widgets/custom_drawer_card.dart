import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomDrawerCard extends StatelessWidget {
  const CustomDrawerCard({
    super.key,
    required this.title,
    required this.details,
  });
  final String title;
  final String details;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFFC107),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(24.r),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: Colors.orange,
            child: Icon(
              FontAwesome.crown_solid,
              color: Colors.white,
              size: 35.w,
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            details,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
