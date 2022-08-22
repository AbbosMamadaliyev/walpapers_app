import 'package:dartz/dartz.dart';
import 'package:walpapers_app/domain/failures/auth_failure.dart';

class Token extends Tuple2<String?, String?> {
  String? get accessToken => value1;
  String? get refreshToken => value2;
  Token({required String? accessToken, String? refreshToken = ''})
      : super(accessToken, refreshToken);
}

extension TokenX on Token {
  AuthFailure? get hasFailure {
    if (accessToken == null) {
      return const AuthFailure.unAuthenticated();
    } else {
      return null;
    }
  }

  String get toToken {
    return accessToken ?? '';
  }
}
