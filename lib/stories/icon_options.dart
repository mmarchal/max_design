import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

List<Option<IconData>> iconOptions(Option<IconData> defaultOption) => [
      defaultOption,
      const Option(
        label: 'Username',
        value: Icons.login,
      ),
      const Option(
        label: 'Password',
        value: Icons.password,
      ),
      const Option(
        label: 'Home',
        value: Icons.home,
      ),
      const Option(
        label: 'Sports',
        value: Icons.sports,
      ),
      const Option(
        label: 'Statistiques',
        value: Icons.analytics,
      ),
    ];
