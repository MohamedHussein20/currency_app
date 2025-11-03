import 'package:currency_app/core/resources/colors.dart';
import 'package:currency_app/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenListViewItem extends StatelessWidget {
  const HomeScreenListViewItem({
    super.key,
    required this.backgroundColor,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'EURUSD',
                style: TextStyles.style16SemiBold(),
              ),
              Text(
                '20 mars 06:29PM',
                style: TextStyles.style13Medium(),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Trade Close',
                style: TextStyles.style16SemiBold(
                  color: AppColors.blue,
                ),
              ),
              Text(
                'Take profit 1 ',
                style: TextStyles.style16SemiBold(
                  color: AppColors.blue,
                ),
              ),
            ],
          ),
          Text(
            'TP - 2',
            style: TextStyles.style16Bold(),
          ),
          const Icon(Icons.home, color: Colors.black),
        ],
      ),
    );
  }
}
