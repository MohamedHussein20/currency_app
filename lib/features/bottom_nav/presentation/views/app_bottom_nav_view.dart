import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:currency_app/core/resources/colors.dart';
import 'package:currency_app/core/resources/styles.dart';
import 'package:currency_app/features/bottom_nav/presentation/manager/bottom_nav_cubit.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BottomNavCubit>();
    final index = context.watch<BottomNavCubit>().state;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      onTap: cubit.changeNavIndex,
      backgroundColor: AppColors.background,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.gray600,
      selectedLabelStyle: TextStyles.style13SemiBold(color: AppColors.primary),
      unselectedLabelStyle: TextStyles.style13Medium(color: AppColors.gray600),
      elevation: 20.h,
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(FontAwesomeIcons.house),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(FontAwesomeIcons.chartSimple),
          ),
          label: 'Recommendations',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(FontAwesomeIcons.star),
          ),
          label: 'VIP',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(FontAwesomeIcons.gear),
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
