import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/features/dashboard/cart/models/Add_cart_model.dart';
import 'package:get/get.dart';

class AddCartController extends GetxController {
  static AddCartController get to => Get.isRegistered<AddCartController>() ? Get.find() : Get.put(AddCartController());
  RxBool isAddCartLoading = false.obs;
  Rx<AddCartModel>? addCartModal;

  @override
  void onInit() {
    // getAddToCartList();
    super.onInit();
  }

  final Dio dio = Dio();
  var headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

  Future<AddCartModel?> addToCart(
    String productId,
    String qty,
    String attributeId,
    String languageId,
    String deviceId,
  ) async {
    isAddCartLoading.value = true;
    delay3;
    var data = json.encode({
      "product_id": productId,
      "qty": "1",
      "attribute_id": attributeId,
      "language_id": "1",
      "device_id": "1",
    });
    // var dio = Dio();
    print("data... $data");
    var response = await dio.post(
      'https://athathi.stag.vrinsoft.in/api/v1/add_to_cart',
      options: Options(headers: headers),
      data: data,
    );
    print("response... $response");
    if (response.statusCode == 200) {
      print('Add.to.Cart...: ${response.data}');
    } else {
      print('API call failed: ${response.statusMessage}');
    }
    return null;
    /* try {
      final response = await dio
          .post("https://athathi.stag.vrinsoft.in/api/v1/add_to_cart", options: Options(headers: headers), data: {
        {"product_id": "1", "qty": "1", "attribute_id": "1", "language_id": "1", "device_id": "1"}
      });
      if (response.statusCode == 200) {
        // addCartModal = AddCartModel.fromJson(response.data).obs;
        print('Add.to.Cart...: ${response.data}');
        isAddCartLoading.value = false;
      } else {
        print('API call failed: ${response.statusMessage}');
      }
    } catch (e) {
      print("error..$e");
    }
    return null;*/
  }
}
