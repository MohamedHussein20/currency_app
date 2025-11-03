import 'package:currency_app/core/resources/colors.dart';
import 'package:currency_app/core/resources/styles.dart';
import 'package:currency_app/features/bottom_nav/presentation/manager/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavCubit cubit = context.watch<BottomNavCubit>();

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: cubit.changeNavIndex,
      backgroundColor: AppColors.background,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.gray600,
      selectedLabelStyle: TextStyles.style13SemiBold(
        color: AppColors.primary,
      ),
      unselectedLabelStyle: TextStyles.style13Medium(
        color: AppColors.gray600,
      ),
      elevation: 20.h,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: const Icon(FontAwesome.house_solid),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: const Icon(FontAwesome.chart_simple_solid),
          ),
          label: 'Recommendations',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: const Icon(FontAwesome.star_solid),
          ),
          label: 'VIP',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: const Icon(FontAwesome.gear_solid),
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
