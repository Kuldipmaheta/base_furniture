import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/features/dashboard/cart/models/remove_product_from_cart.dart';
import 'package:get/get.dart';

class RemoveCartController extends GetxController {
  static RemoveCartController get to =>
      Get.isRegistered<RemoveCartController>() ? Get.find() : Get.put(RemoveCartController());
  RxBool isRemoveCartLoading = false.obs;
  Rx<RemoveCartModel>? removeCartModel;
  final Dio dio = Dio();
  var headers = {'Content-Type': 'application/json'};

  Future<RemoveCartModel?> removeFromCart(
    String productId,
    String languageId,
    String attributeId,
    String deviceId,
  ) async {
    isRemoveCartLoading.value = true;
    delay3;
    var data = json.encode({
      "language_id": "1",
      "product_id": productId,
      "attribute_id": attributeId,
      "device_id": "1",
    });
    print("data... $data");
    try {
      var response = await dio.post("https://athathi.stag.vrinsoft.in/api/v1/remove_product_from_cart",
          options: Options(headers: headers), data: data);
      print("response... $response");
      if (response.statusCode == 200) {
        print('Remove.Cart...: ${response.data}');
      } else {
        print('API call failed: ${response.statusMessage}');
      }
    } catch (e) {
      print('Unexpected error: $e');
    }
    return null;
  }
}
