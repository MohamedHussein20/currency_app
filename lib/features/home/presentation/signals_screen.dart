import 'package:currency_app/features/home/presentation/widgets/details_widgets/details_screen_app_bar.dart';
import 'package:currency_app/features/home/presentation/widgets/signal_widgets/signals_list_view.dart';
import 'package:currency_app/features/home/presentation/widgets/signal_widgets/tabs_section.dart';
import 'package:flutter/material.dart';

class SignalsScreen extends StatelessWidget {
  const SignalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF2F3F5), // ✅ نفس الخلفية الرمادي الفاتح
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsScreenAppBar(),
            SizedBox(height: 10),
            TabsSection(),
            SizedBox(height: 10),
            Expanded(
              child: SignalsListView(), // ✅ الجزء اللي فيه Scroll
            ),
          ],
        ),
      ),
    );
  }
}
