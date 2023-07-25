class LoginFailResponseModel {
  bool? success;
  int? statusCode;
  String? statusMessage;

  LoginFailResponseModel({this.success, this.statusCode, this.statusMessage});

  LoginFailResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['status_code'] = statusCode;
    data['status_message'] = statusMessage;
    return data;
  }
}
