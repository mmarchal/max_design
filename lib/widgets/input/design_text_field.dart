//Init textfield widget with custom design

import 'package:flutter/material.dart';

typedef VoidOnChanged = void Function(String value);
typedef VoidOnSubmitted = void Function(String value);

class DesignTextField extends StatelessWidget {
  final TextEditingController controller;
  final VoidOnChanged? onChanged;
  final VoidOnSubmitted? onSubmitted;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final double? widthContainer;
  final Color? color;

  const DesignTextField({
    Key? key,
    required this.controller,
    this.onChanged,
    this.onSubmitted,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText,
    this.widthContainer,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        width: widthContainer ?? 200,
        child: TextFormField(
          controller: controller,
          maxLines: 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: color,
            ),
            hintText: hintText,
          ),
          keyboardType: keyboardType ?? TextInputType.text,
          textInputAction: TextInputAction.done,
          onChanged: (value) => onChanged?.call(value),
          onFieldSubmitted: (value) => onSubmitted?.call(value),
        ),
      );
}
