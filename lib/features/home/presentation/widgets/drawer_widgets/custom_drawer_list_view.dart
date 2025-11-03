import 'package:currency_app/features/home/presentation/remove_ads_screen.dart';
import 'package:currency_app/features/home/presentation/signals_screen.dart';
import 'package:currency_app/features/home/presentation/vip_subscription_screen.dart';
import 'package:currency_app/features/home/presentation/widgets/drawer_widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CustomDrawerItem(icon: Icons.home, title: 'Home'),
          CustomDrawerItem(icon: Icons.school, title: 'Forex Strategies'),
          CustomDrawerItem(
            icon: Icons.bar_chart,
            title: 'Signals Results',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SignalsScreen()),
              );
            },
          ),
          CustomDrawerItem(
            icon: Icons.workspace_premium,
            title: 'VIP subscription',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const VipSubscriptionScreen(),
                ),
              );
            },
          ),
          CustomDrawerItem(
            icon: Icons.remove_circle_outline,
            title: 'Remove Ads',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RemoveAdsScreen()),
              );
            },
          ),
          CustomDrawerItem(
            icon: Icons.notifications_none,
            title: 'Notifications',
          ),
          CustomDrawerItem(icon: Icons.settings, title: 'Settings'),
          CustomDrawerItem(icon: Icons.logout, title: 'Logout'),
        ],
      ),
    );
  }
}
