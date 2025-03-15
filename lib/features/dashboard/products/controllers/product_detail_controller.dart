import 'package:dio/dio.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/features/dashboard/products/models/product_details_model.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  static ProductDetailController get to =>
      Get.isRegistered<ProductDetailController>() ? Get.find() : Get.put(ProductDetailController());
  RxBool isProductLoading = false.obs;
  Rx<ProductDetailsModel>? productDetailsModel;

  @override
  void onInit() {
    // getProDuctDetail();
    super.onInit();
  }

  final Dio dio = Dio();
  Future<ProductDetailsModel?> getProDuctDetail() async {
    isProductLoading.value = true;
    delay3;
    try {
      final response = await dio.get(
        "https://athathi.stag.vrinsoft.in/api/v1/product_detail?language_id=1&product_id=${Get.arguments}&device_id=1",
        // data: {"language_id": "1", "device_id": "1"}
      );
      if (response.statusCode == 200) {
        productDetailsModel = ProductDetailsModel.fromJson(response.data).obs;
        print('Product Details api...: ${response.data}');
        isProductLoading.value = false;
      } else {}
    } catch (e) {
      print(e);
    }
    return productDetailsModel?.value;
  }
}
