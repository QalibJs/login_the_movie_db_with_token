class TokenFailModel {
  int? statusCode;
  String? statusMessage;
  bool? success;

  TokenFailModel({this.statusCode, this.statusMessage, this.success});

  TokenFailModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status_code'] = statusCode;
    data['status_message'] = statusMessage;
    data['success'] = success;
    return data;
  }
}
