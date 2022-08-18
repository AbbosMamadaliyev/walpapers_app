import 'package:shared_preferences/shared_preferences.dart';
import 'package:walpapers_app/presentation/style/theme_mode.dart';

class ThemePreference {
  final SharedPreferences _preferences;

  static const prefKey = 'theme_mode';

  ThemePreference._(this._preferences);

  static ThemePreference create(SharedPreferences _preferences) {
    return ThemePreference._(_preferences);
  }

  CustomThemeMode getMode() {
    final modeKey = _preferences.getString(ThemePreference.prefKey) ??
        CustomThemeMode.light.toKey;

    return CustomThemeModeX.toValue(modeKey);
  }

  Future<void> setMode(CustomThemeMode mode) async {
    await _preferences.setString(ThemePreference.prefKey, mode.toKey);
  }

  Future<void> clean() async {
    await _preferences.clear();
  }
}
