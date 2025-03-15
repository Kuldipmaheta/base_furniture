import 'package:dio/dio.dart';
import 'package:furniture/features/dashboard/products/models/Product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get to => Get.isRegistered<ProductController>() ? Get.find() : Get.put(ProductController());
  RxBool isProductListLoading = false.obs;
  Rx<ProductModel>? productModel;

  final Dio dio = Dio();
  Future<ProductModel?> getProductList() async {
    isProductListLoading.value = true;
    try {
      final response = await dio.get(
          "https://athathi.stag.vrinsoft.in/api/v1/product_list?search_keyword&language_id=1&page_no=1&per_page=10&device_id=1");
      productModel = ProductModel.fromJson(response.data).obs;
      print('ProductList api...: ${response.data}');
      isProductListLoading.value = false;
    } catch (e) {
      print("object:: $e");
    }
    return productModel?.value;
  }
}
