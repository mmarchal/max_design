import 'package:flutter/material.dart';
import 'package:max_design/stories/button/design_button_story.dart';
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
            name: 'Widgets/AppLoader',
            description: 'Loader',
            builder: (context) => const AppLoader(),
          ),
        ],
      );
}
