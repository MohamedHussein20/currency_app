import 'package:currency_app/core/resources/colors.dart';
import 'package:currency_app/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabsSection extends StatefulWidget {
  const TabsSection({super.key});

  @override
  State<TabsSection> createState() => _TabsSectionState();
}

class _TabsSectionState extends State<TabsSection> {
  int selectedIndex = 0;

  final List<String> tabs = ["Currencies", "Cryptos", "Commodities"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          tabs.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.fieldFill
                    : AppColors.gray3,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                tabs[index],
                style: TextStyles.style14SemiBold(
                  color: selectedIndex == index ? Colors.white : Colors.black87,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
