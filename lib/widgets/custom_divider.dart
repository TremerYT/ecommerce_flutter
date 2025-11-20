import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class CustomDivider extends StatelessWidget {
  final String text;

  const CustomDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.divider, thickness: 1)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Expanded(child: Divider(color: AppColors.divider, thickness: 1)),
      ],
    );
  }
}
