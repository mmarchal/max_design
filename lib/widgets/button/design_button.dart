import 'package:flutter/material.dart';

class DesignButton extends StatelessWidget {
  const DesignButton._({
    Key? key,
    this.icon,
    this.isOutlined = false,
    this.onPressed,
    this.text,
    this.style,
  }) : super(key: key);

  final Widget? icon;
  final String? text;
  final bool isOutlined;
  final Function()? onPressed;
  final ButtonStyle? style;

  factory DesignButton.simple({
    Function()? onPressed,
    String? text,
    ButtonStyle? style,
  }) =>
      DesignButton._(
        style: style,
        isOutlined: false,
        onPressed: onPressed,
        text: text,
      );

  factory DesignButton.elevated({
    required Widget icon,
    Function()? onPressed,
    String? text,
    ButtonStyle? style,
  }) =>
      DesignButton._(
        icon: icon,
        style: style,
        isOutlined: false,
        onPressed: onPressed,
        text: text,
      );

  factory DesignButton.outlined({
    required Widget icon,
    Function()? onPressed,
    String? text,
    ButtonStyle? style,
  }) =>
      DesignButton._(
        icon: icon,
        style: style,
        isOutlined: true,
        onPressed: onPressed,
        text: text,
      );

  @override
  Widget build(BuildContext context) {
    final content = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) icon!,
        if (text != null)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                text!,
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );

    return isOutlined
        ? OutlinedButton(
            onPressed: onPressed,
            child: content,
          )
        : ElevatedButton(
            onPressed: onPressed,
            child: content,
          );
  }
}
