abstract class Serializable {
  Map<String, dynamic> toJson();
}

class ApiResponse<T extends Serializable> {
  bool success;
  int? code;
  String? message;
  String? error;
  T? data;

  ApiResponse({this.message, this.code, this.data, required this.success, this.error});

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Map<String, dynamic>)? create) {
    if (json["code"] == 401 || json["code"] == 1001 || json["code"] == 1003) {
      // Global.onTapLogout();
    }
    return ApiResponse<T>(
      success: json["success"],
      code: json["code"],
      message: json["message"],
      data: json['data'] != null ? _parseData<T>(json["data"], create) : null,
      error: json["error"],
    );
  }

  static T? _parseData<T extends Serializable>(dynamic data, T Function(Map<String, dynamic>)? create) {
    return data is Map<String, dynamic> && create != null ? create(data) : null;
  }
}
