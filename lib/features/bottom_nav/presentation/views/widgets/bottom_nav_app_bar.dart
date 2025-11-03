import 'package:currency_app/core/resources/colors.dart';
import 'package:currency_app/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomNavAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BottomNavAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'STBTRFX',
        style: TextStyles.style24Bold(),
      ),
      backgroundColor: AppColors.background,
      centerTitle: true,
      scrolledUnderElevation: 0,
      leading: GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Icon(
          FontAwesome.bars_solid,
          color: Colors.white,
          size: 24.w,
        ),
      ),
      actions: [
        Icon(
          FontAwesome.building_columns_solid,
          color: Colors.white,
          size: 24.w,
        ),
        16.horizontalSpace,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
