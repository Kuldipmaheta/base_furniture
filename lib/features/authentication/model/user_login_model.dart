/// success : true
/// message : "login_success"
/// data : {"otp":"3122","expiration_time":"2024-12-26 15:13:20"}
/// error : null

class UserLogin {
  UserLogin({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  UserLogin.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    error = json['error'];
  }
  bool? success;
  String? message;
  Data? data;
  dynamic error;
  UserLogin copyWith({
    bool? success,
    String? message,
    Data? data,
    dynamic error,
  }) =>
      UserLogin(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
        error: error ?? this.error,
      );
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

/// otp : "3122"
/// expiration_time : "2024-12-26 15:13:20"

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
  Data copyWith({
    String? otp,
    String? expirationTime,
  }) =>
      Data(
        otp: otp ?? this.otp,
        expirationTime: expirationTime ?? this.expirationTime,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['otp'] = otp;
    map['expiration_time'] = expirationTime;
    return map;
  }
}
