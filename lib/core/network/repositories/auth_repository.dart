import 'dart:io';

import 'package:dio/dio.dart';
import 'package:furniture/core/network/api_end_point.dart';
import 'package:furniture/core/network/api_response.dart';
import 'package:furniture/core/network/network_services.dart';
import 'package:furniture/design/utils/global.dart';
import 'package:furniture/features/authentication/model/response_model/auth/Login_response_model.dart';

class AuthRepository {
  NetworkService service = NetworkService();

  Future<ApiResponse<LoginResponseModel>> login({required String email}) async {
    const loginUrl = ApiEndPoints.kBaseUrl + ApiEndPoints.kUserLogin;
    final formData = FormData.fromMap({
      "email": email,
      "fcm_token": Global.firebaseToken,
      "device_type": Platform.isIOS ? 2 : 1,
    });

    try {
      final response = await service.post(
        loginUrl,
        body: formData,
        // fromJsonT: (json) => LoginResponseModel.fromJson(json),
      );

      return response;
    } catch (e) {
      // Logger.logPrint(title: 'Catch :: ${e.toString()}');
      return ApiResponse(success: false, message: 'Error on catch: $e');
    }
  }
}
