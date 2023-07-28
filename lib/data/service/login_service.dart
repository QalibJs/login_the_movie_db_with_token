import 'package:dio/dio.dart';
import '../../constants/app_token.dart';
import '../model/fail/login_fail_model.dart';
import '../model/success/login_success_model.dart';
import '../model/success/token_success_model.dart';
import 'token_service.dart';

class LoginService {
  LoginService._();
  static Dio dio = Dio();
  static Future<dynamic> getloginService({
    required String username,
    required String password,
  }) async {
    var result = await TokenService.getTokenService();
    if (result is TokenSuccessResponseModel) {
      final data = {
        "username": username,
        "password": password,
        "request_token": result.requestToken,
      };
      Response response = await dio.post(AppLinks.apiLoginRequest, data: data);

      if (response.statusCode == 200) {
        final success = response.data;
        return LoginSuccessResponseModel.fromJson(success);
      } else if (response.statusCode == 401) {
        final failed = response.data;
        return LoginFailResponseModel.fromJson(failed);
      } else {
        return;
      }
    }
  }
}
