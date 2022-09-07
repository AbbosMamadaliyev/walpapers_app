import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/common/token.dart';

class PreferenceService {
  static const fireToken = 'fire_token';
  static const loginAsGuest = 'loginAsGuest';

  static SharedPreferences? _preferences;

  static Future<PreferenceService> get create async {
    _preferences ??= await SharedPreferences.getInstance();
    return PreferenceService();
  }

  void setToken(Token token) async {
    await _preferences?.setString(fireToken, token.accessToken ?? '');
  }

  Token get token {
    final accessToken = _preferences?.getString(fireToken);
    return Token(
      accessToken: accessToken,
    );
  }

  Future<void> saveGuest(bool loginGuest) async {
    await _preferences?.setBool(loginAsGuest, loginGuest);
  }

  bool? getGuest() {
    return _preferences?.getBool(loginAsGuest);
  }
}
