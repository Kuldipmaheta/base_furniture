import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture/features/dashboard/category/model/category_model.dart';

class CategoryDataProvider extends ChangeNotifier {
  CategoryModel? categoryModel;

  final Dio dio = Dio();
  Future getData() async {
    try {
      final response =
          await dio.get("https://athathi.stag.vrinsoft.in/api/v1/category_list?language_id=1&page_no=1&per_page=10");
      if (response.statusCode == 200) {
        categoryModel = CategoryModel.fromJson(response.data);
        print('API call successful: ${response.data}');
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
