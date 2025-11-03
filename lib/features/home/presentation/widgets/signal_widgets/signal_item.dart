import 'package:currency_app/core/resources/styles.dart';
import 'package:currency_app/features/home/presentation/widgets/signal_widgets/signal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignalItem extends StatelessWidget {
  final String time;
  final String country1Flag;
  final String country2Flag;
  final String pairName;
  final int activeDotIndex;

  const SignalItem({
    super.key,
    required this.time,
    required this.country1Flag,
    required this.country2Flag,
    required this.pairName,
    this.activeDotIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, bottom: 4.h),
          child: Text(
            time,
            style: TextStyles.style13Medium(color: Colors.grey),
          ),
        ),

        SignalCard(country1Flag: country1Flag, country2Flag: country2Flag, pairName: pairName, activeDotIndex: activeDotIndex),
      ],
    );
  }
}







