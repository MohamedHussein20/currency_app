import 'package:currency_app/features/home/presentation/widgets/signal_widgets/signal_dots.dart';
import 'package:currency_app/features/home/presentation/widgets/signal_widgets/signal_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignalCard extends StatelessWidget {
  const SignalCard({
    super.key,
    required this.country1Flag,
    required this.country2Flag,
    required this.pairName,
    required this.activeDotIndex,
  });

  final String country1Flag;
  final String country2Flag;
  final String pairName;
  final int activeDotIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SignalFlags(
            country1Flag: country1Flag,
            country2Flag: country2Flag,
            pairName: pairName,
          ),

          SignalDots(activeDotIndex: activeDotIndex),
        ],
      ),
    );
  }
}
