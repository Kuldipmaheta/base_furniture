/// token : "QpwL5tke4Pnpja7X4"

class AuthModel {
  AuthModel({
    this.token,
  });

  AuthModel.fromJson(dynamic json) {
    token = json['token'];
  }
  String? token;
  AuthModel copyWith({
    String? token,
  }) =>
      AuthModel(
        token: token ?? this.token,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }
}
