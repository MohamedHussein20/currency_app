import 'package:currency_app/core/resources/colors.dart';
import 'package:currency_app/features/home/presentation/widgets/home_widgets/home_screen_list_view_item.dart';
import 'package:flutter/material.dart';


class HomeScreenListView extends StatelessWidget {
  const HomeScreenListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Color backgroundColor = index % 2 == 0
            ? AppColors.secondaryBackground
            : AppColors.background;
        return HomeScreenListViewItem(backgroundColor: backgroundColor);
      },
      itemCount: 20,
    );
  }
}

