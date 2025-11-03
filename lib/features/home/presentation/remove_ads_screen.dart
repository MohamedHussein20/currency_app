import 'package:currency_app/features/home/presentation/widgets/custom_drawer_card.dart';
import 'package:currency_app/features/home/presentation/widgets/subscription_card_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RemoveAdsScreen extends StatelessWidget {
  const RemoveAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const CustomDrawerCard(
            title: 'Remove Ads',
            details: 'Subscribe to remove ads and enjoy an ad-free experience.',
          ),

          SizedBox(height: 25.h),

          Text(
            'Packages',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 20.h),

          const SubscriptionCardListView(),
        ],
      ),
    );
  }
}
