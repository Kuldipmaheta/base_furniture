import 'package:dio/dio.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/features/dashboard/cart/models/cart_response_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  static CartController get to => Get.isRegistered<CartController>() ? Get.find() : Get.put(CartController());
  RxBool isCartLoading = false.obs;
  Rx<CartResponseModel>? cartResponseModel;
  // RxList<ProductList> popularFurnitureList = <ProductList>[].obs;
  @override
  void onInit() {
    super.onInit();
    // getPopularCartList();
  }

  final Dio dio = Dio();
  Future<CartResponseModel?> getPopularCartList() async {
    isCartLoading.value = true;
    delay3;
    try {
      final response = await dio.get(
          "https://athathi.stag.vrinsoft.in/api/v1/get_cart_detail?language_id=1&device_id=1",
          data: {"language_id": "1", "device_id": "1"});
      if (response.statusCode == 200) {
        cartResponseModel = CartResponseModel.fromJson(response.data).obs;
        print('Cart...: ${response.data}');
        isCartLoading.value = false;
      } else {}
    } catch (e) {
      print(e);
    }
    return cartResponseModel?.value;
  }
}
