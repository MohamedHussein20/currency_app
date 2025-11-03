import 'package:currency_app/features/home/presentation/widgets/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionCardListView extends StatelessWidget {
  const SubscriptionCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const SubscriptionCard(
              title: 'Monthly (Stbt rfx)',
              price: 'EGP 129.99',
            );
          },
        ),
      ),
    );
  }
}
