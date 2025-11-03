import 'package:currency_app/features/home/presentation/widgets/custom_drawer_social_media_section.dart';
import 'package:currency_app/features/home/presentation/widgets/custom_drawer_header.dart';
import 'package:currency_app/features/home/presentation/widgets/custom_drawer_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60.r),
          bottomRight: Radius.circular(60.r),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDrawerHeader(),
            CustomDrawerListView(),
            CustomDrawerSocialMediaSection(),
          ],
        ),
      ),
    );
  }
}
