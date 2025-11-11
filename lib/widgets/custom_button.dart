import 'package:ecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? bgColor;
  final Color? textColor;
  final double fontSize;
  final double? width;
  final Widget? icon;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.bgColor,
    this.textColor,
    this.fontSize = 16.0,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonBgColor = bgColor ?? theme.colorScheme.primary;
    final buttonTextColor = textColor ?? theme.colorScheme.onPrimary;
    final label = CustomText(
      text: title,
      textColor: buttonTextColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width ?? 0, 50),
        backgroundColor: buttonBgColor,
        foregroundColor: buttonTextColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                label,
                const SizedBox(width: 8),
                IconTheme(
                  data: IconThemeData(size: fontSize + 4),
                  child: icon!,
                ),
              ],
            )
          : label,
    );
  }
}
