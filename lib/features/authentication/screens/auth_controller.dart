import 'package:furniture/core/network/repositories/auth_repository.dart';
import 'package:furniture/features/authentication/controllers/sign_in.dart';
import 'package:furniture/features/authentication/model/response_model/auth/Login_response_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.isRegistered<AuthController>() ? Get.find() : Get.put(AuthController());
  AuthRepository repository = AuthRepository();

  ///login
  Future<void> loginApiCall() async {
    // Global.hideKeyboard();
    // isLoading(true);
    try {
      final apiResponse = await repository.login(email: emailController.value.text.trim());
      // isLoading(false);
      // Global.hideLoader();
      if (apiResponse.success) {
        if (apiResponse.data != null) {
          LoginResponseModel model = apiResponse.data!;
          // NetworkService.accessToken = model.accessToken;
          // NetworkService().init();
          // Logger.printer(title: model.toJson().toString());
          // Global.showSnakeBar(message: '${model.otp}');
          // Get.toNamed(AppRoutes.otpVerificationScreen);
        }
      } else {
        // String errorString = apiResponse.error ?? LabelConst.commonErrorApiMessage;
        // Logger.logPrint(title: errorString);
        // Global.showSnakeBar(message: errorString.toTranslate);
      }
    } catch (e) {
      // debugPrint(e.toString());
    } finally {
      // Global.hideLoader();
      // isLoading(false);
    }
  }
}
