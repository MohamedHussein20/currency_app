import 'package:flutter/material.dart';

class DetailsScreenAppBar extends StatelessWidget {
  const DetailsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF0E1620),
      elevation: 0,
      title: const Text('Forex Signals - Live Buy/sell'),
      actions: [IconButton(icon: const Icon(Icons.menu), onPressed: () {})],
    );
  }
}
