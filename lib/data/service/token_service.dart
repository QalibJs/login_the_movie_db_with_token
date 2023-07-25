import 'package:dio/dio.dart';
import 'package:working_movie_token/constants/app_token.dart';
import 'package:working_movie_token/data/model/fail/token_fail_model.dart';
import 'package:working_movie_token/data/model/success/token_success_model.dart';

class TokenService {
  TokenService._();
   static Dio  dio = Dio();
   static Future getTokenService() async {
    Response response = await dio.get(AppLinks.apiGetNewTokenRequest);

    if (response.statusCode == 200) {
      final success = response.data;
      
      return TokenSuccessResponseModel.fromJson(success);
    } else if (response.statusCode == 401) {
      final failed = response.data;
      return TokenFailModel.fromJson(failed);
    } else {
      return;
    }
  }
}
