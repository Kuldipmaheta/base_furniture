import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/review_model.dart';

class GetDataProvider extends ChangeNotifier {
  ReviewModel? reviewModel;

  getData() async {
    try {
      final response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
      if (response.statusCode == 200) {
        print("models.. $reviewModel");
        reviewModel = ReviewModel.fromJson(jsonDecode(response.body));
        notifyListeners();
      } else {
        print("else");
      }
    } catch (e) {
      print(e);
    }
  }
}
