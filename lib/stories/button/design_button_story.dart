import 'package:flutter/material.dart';
import 'package:max_design/stories/options/icon_options.dart';
import 'package:max_design/widgets/button/design_button.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

IconData elevatedIconDefault = Icons.check;
IconData outlinedIconDefault = Icons.accessible_outlined;
Option<IconData> elevatedIconOption() => Option(
      label: 'Elevated icon default',
      value: elevatedIconDefault,
    );
Option<IconData> outlinedIconOption() => Option(
      label: 'Outlined icon default',
      value: outlinedIconDefault,
    );

Widget designButtonStory(KnobsBuilder knobsBuilder) => FakeButtonText(
      elevatedIcon: knobsBuilder.options(
        label: 'Elevated button Icon',
        initial: elevatedIconDefault,
        options: iconOptions(
          elevatedIconOption(),
        ),
      ),
      elevatedText: knobsBuilder.text(
        label: 'Elevated button Text',
        initial: 'Hello World',
      ),
      outlinedIcon: knobsBuilder.options(
        label: 'Outlined button Icon',
        initial: outlinedIconDefault,
        options: iconOptions(
          outlinedIconOption(),
        ),
      ),
      outlinedText: knobsBuilder.text(
        label: 'Outlined button Text',
        initial: 'Hello World',
      ),
      widthButton: knobsBuilder
          .sliderInt(
            label: 'Width of button',
            initial: 200,
            min: 200,
            max: 1000,
          )
          .toDouble(),
    );

class FakeButtonText extends StatefulWidget {
  final IconData elevatedIcon;
  final String elevatedText;
  final IconData outlinedIcon;
  final String outlinedText;
  final double widthButton;

  const FakeButtonText({
    Key? key,
    required this.elevatedIcon,
    required this.elevatedText,
    required this.outlinedIcon,
    required this.outlinedText,
    required this.widthButton,
  }) : super(key: key);

  @override
  State<FakeButtonText> createState() => _FakeButtonTextState();
}

class _FakeButtonTextState extends State<FakeButtonText> {
  bool isElevated = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: widget.widthButton,
          child: DesignButton.elevated(
            icon: Icon(
              widget.elevatedIcon,
            ),
            text: widget.elevatedText,
            onPressed: () => setState(
              () => isElevated = true,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: widget.widthButton,
          child: DesignButton.outlined(
            icon: Icon(
              widget.outlinedIcon,
            ),
            text: widget.outlinedText,
            onPressed: () => setState(
              () => isElevated = false,
            ),
          ),
        ),
        Container(
          width: 100,
          margin: const EdgeInsets.all(16),
          color: isElevated ? Colors.red : Colors.green,
          child: Text(
            isElevated ? 'Elevated' : 'Outlined',
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
