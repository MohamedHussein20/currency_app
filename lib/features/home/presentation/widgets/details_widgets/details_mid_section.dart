import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'details_row.dart';

class DetailsMidSection extends StatelessWidget {
  const DetailsMidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF0E1620),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DetailsRow(title: 'Opening Time', value: '28-Oct 01:11 pm'),
            const DetailsRow(title: 'Open Price', value: '3925.75'),
            SizedBox(height: 4.h),
            const DetailsRow(title: 'Take Profit 1', value: '3922.75'),
            const DetailsRow(title: 'Take Profit 2', value: '3917.75'),
            const DetailsRow(title: 'Take Profit 3', value: '3907.75'),
            const Divider(color: Colors.grey),
            SizedBox(height: 8.h),
            const DetailsRow(title: 'Stop Loss', value: '3935.75'),
            const DetailsRow(title: 'Profit/Loss', value: '+30 PIPS'),
            const DetailsRow(title: 'Trade result', value: 'Take profit'),
            const Divider(color: Colors.grey),
            SizedBox(height: 8.h),
            const DetailsRow(title: 'Trader name', value: 'M **'),
            SizedBox(height: 4.h),
            Text(
              'Comment',
              style: TextStyle(color: Colors.grey, fontSize: 13.sp),
            ),
            SizedBox(height: 6.h),
            Text(
              'Successful Trade',
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            ),
            const Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
