import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walpapers_app/presentation/style/theme.dart';
import 'package:walpapers_app/presentation/style/theme_mode.dart';

import 'custom_color_set.dart';

class GridTheme with ChangeNotifier {
  final ThemePreference _preference;
  CustomColorSet _colorSet;
  CustomThemeMode _mode;

  CustomColorSet get colors => _colorSet;
  CustomThemeMode get mode => _mode;
  bool get isLight => _mode.isLight;

  GridTheme._(
    this._colorSet,
    this._preference,
    this._mode,
  );

  static GridTheme create(SharedPreferences _preferences) {
    final themePreference = ThemePreference.create(_preferences);
    final mode = themePreference.getMode();
    final colorSet = CustomColorSet.createOrUpdate(mode);

    return GridTheme._(
      colorSet,
      themePreference,
      mode,
    );
  }

  Future<void> setLight() async {
    await _update(CustomThemeMode.light);
  }

  Future<void> setDark() async {
    await _update(CustomThemeMode.dark);
  }

  Future<void> clean() async {
    await _preference.clean();
  }

  Future<void> toggle() async {
    if (_mode.isLight) {
      await setDark();
    } else {
      await setLight();
    }
  }

  Future<void> _update(CustomThemeMode mode) async {
    _colorSet = CustomColorSet.createOrUpdate(mode);
    _mode = mode;
    notifyListeners();
    await _preference.setMode(mode);
  }
}
