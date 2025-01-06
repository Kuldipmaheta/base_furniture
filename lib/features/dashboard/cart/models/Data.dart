import 'package:furniture/features/dashboard/home/models/home_response_model.dart';

import 'PriceDetail.dart';

/// product_list : [{"id":0,"product_name":"","vendor_name":"","original_price":500,"discounted_price":400,"product_rating":4.5,"product_image":"","attribute_id":1,"added_qty":1,"attribute_name":"S","color_name":"Color"}]
/// price_detail : {"sub_total":"","discount_on_mrp":"","shipping_charge":"","total_price":""}

class Data {
  Data({
    this.productList,
    this.priceDetail,
  });

  Data.fromJson(dynamic json) {
    if (json['product_list'] != null) {
      productList = [];
      json['product_list'].forEach((v) {
        productList?.add(ProductList.fromJson(v));
      });
    }
    priceDetail = json['price_detail'] != null ? PriceDetail.fromJson(json['price_detail']) : null;
  }
  List<ProductList>? productList;
  PriceDetail? priceDetail;
  Data copyWith({
    List<ProductList>? productList,
    PriceDetail? priceDetail,
  }) =>
      Data(
        productList: productList ?? this.productList,
        priceDetail: priceDetail ?? this.priceDetail,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (productList != null) {
      map['product_list'] = productList?.map((v) => v.toJson()).toList();
    }
    if (priceDetail != null) {
      map['price_detail'] = priceDetail?.toJson();
    }
    return map;
  }
}
