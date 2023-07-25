class AppLinks {
  AppLinks._();

  static const String apiKey = '105642be9d6360443fc32ca00209bdfe';
  static const String apiBaseUrl = 'https://api.themoviedb.org/3';

  static const String apiAuthenticationTokenUrl =
      '$apiBaseUrl/authentication/token';

  static const String apiGetNewTokenRequest =
      '$apiAuthenticationTokenUrl/new?api_key=$apiKey';

  static String apiLoginRequest =
      '$apiAuthenticationTokenUrl/validate_with_login?api_key=$apiKey';
}
