/// success : true
/// message : "remove_product_success"
/// data : null
/// error : null

class RemoveCartModel {
  RemoveCartModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  RemoveCartModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'];
    error = json['error'];
  }
  bool? success;
  String? message;
  dynamic data;
  dynamic error;
  RemoveCartModel copyWith({
    bool? success,
    String? message,
    dynamic data,
    dynamic error,
  }) =>
      RemoveCartModel(
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
    map['error'] = error;
    return map;
  }
}
