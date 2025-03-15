import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Global {
  static String deviceId = "1";
  static String firebaseToken = '';

  static Widget customLoadingIndicator({bool isShow = true}) {
    return Center(child: CircularProgressIndicator(value: isShow ? null : 0));
  }

  static SystemUiOverlayStyle customOverLay({required Color color, bool isLight = false}) => SystemUiOverlayStyle(
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness: isLight ? Brightness.light : Brightness.dark,
      );

  static void showSnakeBar({required String message}) {
    Get.rawSnackbar(
      message: message,
      animationDuration: const Duration(milliseconds: 500),
      duration: const Duration(milliseconds: 2500),
    );
  }

  /*static void showLoader({BuildContext? context}) {
    Future.microtask(() {
      final loaderContext = context ?? Get.overlayContext;
      if (loaderContext == null) {
        debugPrint("❌ No context available to display the loader.");
        return;
      }
      Loader.show(
        loaderContext,
        isSafeAreaOverlay: true,
        isBottomBarOverlay: true,
        overlayFromBottom: 0,
        overlayColor: ColorConst.kWhiteColor.withValues(alpha: 0.7),
        progressIndicator: const CircularProgressIndicator(color: ColorConst.kPrimaryColor),
      );
    });
  }*/

  // static void getDeviceId() async {
  //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //
  //   if (Platform.isAndroid) {
  //     final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //     deviceId2.value = androidInfo.id;
  //   } else if (Platform.isIOS) {
  //     final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //     deviceId2.value = iosInfo.identifierForVendor ?? iosInfo.systemVersion;
  //
  //     debugPrint("object ${iosInfo.name}");
  //     debugPrint("object ${iosInfo.model}");
  //     debugPrint("object ${iosInfo.systemVersion}");
  //     debugPrint("object ${iosInfo.systemName}");
  //     debugPrint("object ${iosInfo.localizedModel}");
  //     debugPrint("object ${iosInfo.modelName}");
  //     debugPrint("object ${iosInfo.data.toString()}");
  //   }
  // }
}

T safeJson<T>(dynamic json, T Function(dynamic) parser) {
  try {
    return parser(json);
  } catch (e, stacktrace) {
    debugPrint("❎❎❎ Error in parsing ${T.toString()} Exception: $e\n$stacktrace");
    rethrow;
  }
}
