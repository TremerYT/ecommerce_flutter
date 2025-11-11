import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextStyle? style;

  const CustomText({
    super.key,
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).textTheme.bodyMedium;
    final finalStyle = (style ?? defaultStyle)?.copyWith(
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight
    );
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins().merge(finalStyle),
    );
  }
}
