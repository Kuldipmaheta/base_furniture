import 'package:furniture/features/dashboard/cart/models/Data.dart';

/// success : false
/// message : "no_data_found"
/// data : null
/// error : {"code":"1001","message":"No Data Found"}

class CartResponseModel {
  CartResponseModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  CartResponseModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'];
    error = json['error'] != null ? Error.fromJson(json['error']) : null;
  }
  bool? success;
  String? message;
  Data? data;
  Error? error;
  CartResponseModel copyWith({
    bool? success,
    String? message,
    Data? data,
    Error? error,
  }) =>
      CartResponseModel(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
        error: error ?? this.error,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    map['data'] = data;
    if (error != null) {
      map['error'] = error?.toJson();
    }
    return map;
  }
}

/// code : "1001"
/// message : "No Data Found"

class Error {
  Error({
    this.code,
    this.message,
  });

  Error.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
  }
  String? code;
  String? message;
  Error copyWith({
    String? code,
    String? message,
  }) =>
      Error(
        code: code ?? this.code,
        message: message ?? this.message,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    return map;
  }
}
