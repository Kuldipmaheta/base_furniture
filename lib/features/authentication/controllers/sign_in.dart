import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture/features/authentication/model/User_login_model.dart';
import 'package:furniture/features/authentication/model/auth_model.dart';

Future<AuthModel>? futureModel;
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController codeController = TextEditingController();

Future<UserLogin?> signIn(String phone_number, String country_code) async {
  try {
    final response = await Dio().post(
      "https://athathi.stag.vrinsoft.in/api/v1/login",
      data: {
        "language_id": "1",
        "device_token": "shshsfsvfsfetwyqrfw",
        "country_code": "965",
        "phone_number": phone_number,
        "device_type": "1"
      },
    );
    if (response.statusCode == 200) {
      print(response.statusCode);
      print('API call successful: ${response.data}');
      // return AuthModel().fromJson(jsonDecode(response.data));
    } else {
      print('API call failed: ${response.statusMessage}');
    }
  } catch (e) {
    print('Network error occurred: $e');
  }
  return null;
}
