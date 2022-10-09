import 'package:flutter/material.dart';
import 'package:max_design/widgets/text/design_text.dart';

class DesignCard extends StatelessWidget {
  final String title;
  final double elevation;
  final Color? color;
  final double? radius;

  const DesignCard({
    Key? key,
    required this.title,
    required this.elevation,
    this.color,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          radius ?? 0,
        ),
      ),
      color: color,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DesignText(
          text: title,
        ),
      ),
    );
  }
}
