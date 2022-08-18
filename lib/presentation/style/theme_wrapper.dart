import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'change_theme.dart';
import 'custom_color_set.dart';

class ThemeWrapper extends StatelessWidget {
  final Function(
    BuildContext context,
    CustomColorSet colors,
    GridTheme controller,
  ) builder;

  const ThemeWrapper({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GridTheme>(builder: (context, theme, _) {
      return builder(context, theme.colors, theme);
    });
  }
}
