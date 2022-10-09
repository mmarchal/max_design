import 'package:flutter/material.dart';
import 'package:max_design/stories/options/color_options.dart';
import 'package:max_design/widgets/input/design_text_field.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Widget designTextFieldStory(KnobsBuilder knobsBuilder) => DesignTextField(
      onChanged: (value) => debugPrint(value),
      onSubmitted: (value) => debugPrint(value),
      labelText: knobsBuilder.text(
        label: 'Label',
        initial: 'Hello World',
      ),
      hintText: knobsBuilder.text(
        label: 'Hint',
        initial: 'Hello World',
      ),
      obscureText: knobsBuilder.boolean(
        label: 'Obscure text',
        initial: false,
      ),
      widthContainer: knobsBuilder
          .sliderInt(
            label: 'Width container',
            initial: 300,
            min: 0,
            max: 500,
          )
          .toDouble(),
      color: knobsBuilder.options(
        label: 'Color',
        initial: cardColorDefault,
        options: colorOptions(
          colorOption(),
        ),
      ),
    );
