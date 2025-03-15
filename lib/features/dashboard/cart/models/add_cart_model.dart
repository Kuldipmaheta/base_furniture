import 'package:furniture/design/utils/global.dart';

/// product_id : "1"
/// qty : "1"
/// attribute_id : "1"
/// language_id : "1"
/// device_id : "1"

class AddCartModel {
  AddCartModel({
    this.productId,
    this.qty,
    this.attributeId,
    this.languageId,
    this.deviceId,
  });

  AddCartModel.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      productId = json['product_id'];
      qty = json['qty'];
      attributeId = json['attribute_id'];
      languageId = json['language_id'];
      deviceId = json['device_id'];
    });
  }
  String? productId;
  String? qty;
  String? attributeId;
  String? languageId;
  String? deviceId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = productId;
    map['qty'] = qty;
    map['attribute_id'] = attributeId;
    map['language_id'] = languageId;
    map['device_id'] = deviceId;
    return map;
  }
}
