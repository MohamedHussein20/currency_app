import 'package:currency_app/core/resources/styles.dart';
import 'package:currency_app/features/home/presentation/widgets/signal_widgets/flag_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignalFlags extends StatelessWidget {
  const SignalFlags({
    super.key,
    required this.country1Flag,
    required this.country2Flag,
    required this.pairName,
  });

  final String country1Flag;
  final String country2Flag;
  final String pairName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_border, color: Colors.grey, size: 22.sp),
        SizedBox(width: 8.w),
        
        FlagBuilder(url: country1Flag),
        SizedBox(width: 4.w),
   
        FlagBuilder(url: country2Flag),
        SizedBox(width: 10.w),
        Text(
          pairName,
          style: TextStyles.style16SemiBold(color: Colors.black87),
        ),
      ],
    );
  }
}
