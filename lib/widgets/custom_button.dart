import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView {
  final String title;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;
  final double fontSize;
  final IconData? suffixIcon;

  const CustomButton({
    super.key,
    required this.title,
    required this.fontSize,
    required this.bgColor,
    required this.onPressed,
    required this.textColor,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: title,
            textColor: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
          if (suffixIcon != null) ...[
            const SizedBox(width: 8),
            Icon(suffixIcon, color: textColor, size: fontSize + 2),
          ],
        ],
      ),
    );
  }
}
