import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Color cardColorDefault = Colors.black;

Option<Color> colorOption() => Option(
      label: 'Card color default',
      value: cardColorDefault,
    );

List<Option<Color>> colorOptions(Option<Color> defaultOption) => [
      defaultOption,
      const Option(
        label: 'Green',
        value: Colors.green,
      ),
      const Option(
        label: 'Red',
        value: Colors.red,
      ),
      const Option(
        label: 'Blue',
        value: Colors.blue,
      ),
      const Option(
        label: 'Yellow',
        value: Colors.yellow,
      ),
      const Option(
        label: 'Orange',
        value: Colors.orange,
      ),
      const Option(
        label: 'Purple',
        value: Colors.purple,
      ),
    ];
