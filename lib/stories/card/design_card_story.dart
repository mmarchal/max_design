import 'package:flutter/material.dart';
import 'package:max_design/stories/options/color_options.dart';
import 'package:max_design/widgets/card/design_card.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Widget designCardStory(KnobsBuilder knobsBuilder) => DesignCard(
      title: knobsBuilder.text(
        label: 'Title',
        initial: 'Hello World',
      ),
      elevation: knobsBuilder
          .sliderInt(
            label: 'Elevation',
            initial: 5,
            min: 0,
            max: 20,
          )
          .toDouble(),
      color: knobsBuilder.options(
        label: 'Color',
        initial: cardColorDefault,
        options: colorOptions(
          colorOption(),
        ),
      ),
      radius: knobsBuilder
          .sliderInt(
            label: 'Radius',
            initial: 5,
            min: 0,
            max: 30,
          )
          .toDouble(),
    );
