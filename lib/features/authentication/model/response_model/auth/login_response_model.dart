// {success : true
// message : "login_success"
// data : {"otp":"3589","expiration_time":"2025-03-11 11:47:03"}
// error : null
// }
import 'package:furniture/core/network/api_response.dart';

class LoginResponseModel extends Serializable {
  LoginResponseModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  LoginResponseModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    error = json['error'];
  }
  bool? success;
  String? message;
  Data? data;
  dynamic error;

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['error'] = error;
    return map;
  }
}

class Data {
  Data({
    this.otp,
    this.expirationTime,
  });

  Data.fromJson(dynamic json) {
    otp = json['otp'];
    expirationTime = json['expiration_time'];
  }
  String? otp;
  String? expirationTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['otp'] = otp;
    map['expiration_time'] = expirationTime;
    return map;
  }
}
