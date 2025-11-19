import 'package:flutter/material.dart';

import '../utils/theme.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageCount,
    required this.currentPage,
  });

  final int pageCount;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        final bool isActive = currentPage == index;
        final Color indicatorColor = isActive
            ? AppColors.primary.withOpacity(0.9)
            : Colors.grey.withOpacity(0.4);
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: isActive ? 20 : 8,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: indicatorColor,
          ),
        );
      }),
    );
  }
}
