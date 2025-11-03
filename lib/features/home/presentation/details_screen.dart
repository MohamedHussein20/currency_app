import 'package:currency_app/features/home/presentation/widgets/details_widgets/bottom_buttons_section.dart';
import 'package:currency_app/features/home/presentation/widgets/details_widgets/details_screen_app_bar.dart';
import 'package:currency_app/features/home/presentation/widgets/details_widgets/details_mid_section.dart';
import 'package:currency_app/features/home/presentation/widgets/details_widgets/title_section.dart';
import 'package:currency_app/features/home/presentation/widgets/details_widgets/top_cards_section.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0E1620),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsScreenAppBar(),
            SizedBox(height: 12),
            TitleSection(),
            SizedBox(height: 12),
            TopCardsSection(),
            SizedBox(height: 18),
            Expanded(child: DetailsMidSection()),
            SizedBox(height: 12),
            BottomButtonsSection(),
          ],
        ),
      ),
    );
  }
}
