import 'package:currency_app/features/home/presentation/widgets/details_widgets/details_top_section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCardsSection extends StatelessWidget {
  const TopCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: DetailsTopSectionCard(
            title: 'Action',
            value: 'Sell',
            valueColor: Colors.redAccent,
          ),
        ),
        SizedBox(width: 14.w),
        const Expanded(
          child: DetailsTopSectionCard(
            title: 'Status',
            value: 'Expired',
            valueColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}

