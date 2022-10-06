import 'package:flutter/material.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Widget designTextStory(KnobsBuilder knobsBuilder) => FakeDesignText(
      text: knobsBuilder.text(
        label: 'Text',
        initial: 'Hello World',
      ),
      textAlign: knobsBuilder.options(
        label: 'Text align',
        initial: TextAlign.center,
        options: const [
          Option(
            label: 'Start',
            value: TextAlign.start,
          ),
          Option(
            label: 'Center',
            value: TextAlign.center,
          ),
          Option(
            label: 'End',
            value: TextAlign.end,
          ),
        ],
      ),
      fontSize: knobsBuilder
          .sliderInt(
            label: 'Font size',
            initial: 14,
            max: 50,
          )
          .toDouble(),
      fontStyle: knobsBuilder.options(
        label: 'Font Style',
        initial: FontStyle.normal,
        options: const [
          Option(
            label: 'Normal',
            value: FontStyle.normal,
          ),
          Option(
            label: 'Italic',
            value: FontStyle.italic,
          ),
        ],
      ),
      fontWeight: knobsBuilder.options(
        label: 'Font Weight',
        initial: FontWeight.normal,
        options: const [
          Option(
            label: 'Normal',
            value: FontWeight.normal,
          ),
          Option(
            label: 'Bold',
            value: FontWeight.bold,
          ),
          Option(
            label: 'w500',
            value: FontWeight.w500,
          ),
        ],
      ),
    );

class FakeDesignText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;

  const FakeDesignText({
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
    return DesignText(
      text: text,
      textAlign: textAlign,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
    );
  }
}
