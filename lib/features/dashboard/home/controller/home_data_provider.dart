import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture/features/dashboard/home/models/Home_response_model.dart';

class HomeDataProvider extends ChangeNotifier {
  HomeResponseModel? homeResponseModel;
  final Dio dio = Dio();
  Future homeResponseData() async {
    try {
      final response = await dio.get(
        "https://athathi.stag.vrinsoft.in/api/v1/home_product_list?language_id=1&device_id=1",
      );
      if (response.statusCode == 200) {
        homeResponseModel = HomeResponseModel.fromJson(response.data);
        print('Home...: ${response.data}');
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
    // return null;
  }
}
