import 'package:flutter/material.dart';

class SignalDots extends StatelessWidget {
  const SignalDots({
    super.key,
    required this.activeDotIndex,
  });

  final int activeDotIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: index == activeDotIndex
                ? Colors.green
                : Colors.grey.shade400,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
