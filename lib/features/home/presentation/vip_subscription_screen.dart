import 'package:currency_app/features/home/presentation/widgets/drawer_widgets/custom_drawer_card.dart';
import 'package:currency_app/features/home/presentation/widgets/home_widgets/subscription_card_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VipSubscriptionScreen extends StatelessWidget {
  const VipSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const CustomDrawerCard(
            title: 'VIP Subscription',
            details: 'Buy VIP subscription and get exclusive VIP features and VIP signals.',
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