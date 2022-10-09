import 'package:flutter/material.dart';
import 'package:max_design/stories/button/design_button_story.dart';
import 'package:max_design/stories/card/design_card_story.dart';
import 'package:max_design/stories/input/design_text_field_story.dart';
import 'package:max_design/stories/others/design_charts_story.dart';
import 'package:max_design/stories/text/design_text_story.dart';
import 'package:max_design/widgets/app_loader.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StorybookMain extends StatelessWidget {
  const StorybookMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Storybook(
        stories: [
          Story(
            name: 'Widgets/Text',
            description: 'Design text widget',
            builder: (context) => designTextStory(
              context.knobs,
            ),
          ),
          Story(
            name: 'Widgets/Button',
            description: 'Design button widget',
            builder: (context) => designButtonStory(
              context.knobs,
            ),
          ),
          Story(
            name: 'Widgets/Card',
            description: 'Design card widget',
            builder: (context) => designCardStory(
              context.knobs,
            ),
          ),
          Story(
            name: 'Widgets/TextFormField',
            description: 'Design text form field widget',
            builder: (context) => designTextFieldStory(
              context.knobs,
            ),
          ),
          Story(
            name: 'Widgets/Charts',
            description: 'Design charts widget',
            builder: (context) => designChartsStory(
              context.knobs,
            ),
          ),
          Story(
            name: 'Widgets/AppLoader',
            description: 'Loader',
            builder: (context) => const AppLoader(),
          ),
        ],
      );
}
