import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class ResetOptionTile extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const ResetOptionTile({
    super.key,
    required this.image,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      splashColor: Colors.grey.withOpacity(0.2),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffdcdcdc)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Image.asset(image, width: 24, height: 24),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: CustomText(
                text: title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xffbfbfbf),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}