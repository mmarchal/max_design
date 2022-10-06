import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;

  const DesignText({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.center,
    this.textStyle,
    this.fontSize = 14,
    this.fontWeight,
    this.fontStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: textStyle ??
          GoogleFonts.montserrat(
            fontSize: fontSize,
            fontStyle: fontStyle,
            fontWeight: fontWeight,
          ),
    );
  }
}
