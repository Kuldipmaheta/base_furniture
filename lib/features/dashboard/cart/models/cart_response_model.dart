import 'package:furniture/design/utils/global.dart';

/// success : true
/// message : "success"
/// data : {"product_list":[{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":544,"discounted_price":444,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","attribute_id":7,"added_qty":1,"attribute_name":"78","color_name":"Green"},{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":455,"discounted_price":422,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","attribute_id":8,"added_qty":5,"attribute_name":"80","color_name":"Green"},{"id":10,"product_name":"Office Chair","vendor_name":"Harry","original_price":221,"discounted_price":22,"product_rating":3,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356320534081.jpg","attribute_id":12,"added_qty":1,"attribute_name":"333","color_name":"Red"}],"price_detail":{"sub_total":3040,"discount_on_mrp":464,"shipping_charge":0,"total_price":2576},"selected_address":{"address_id":"1","customer_name":"","phone_number":"11111111","country_code":"","governate_name":"Farwaniya","governate_id":"3","area_name":"Riqee","area_id":"13","street_no":"Ughvu","avenue":"Buvuvu","building_no":"Uvyfy","floor":"Ycyv","flat":"Ycyv"}}
/// error : null

class CartResponseModel {
  CartResponseModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  CartResponseModel.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      success = json['success'];
      message = json['message'];
      data = json['data'] != null ? Data.fromJson(json['data']) : null;
      error = json['error'];
    });
  }
  bool? success;
  String? message;
  Data? data;
  dynamic error;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['error'] = error;
    return map;
  }
}
// product_list : [{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":544,"discounted_price":444,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","attribute_id":7,"added_qty":1,"attribute_name":"78","color_name":"Green"},{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":455,"discounted_price":422,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","attribute_id":8,"added_qty":5,"attribute_name":"80","color_name":"Green"},{"id":10,"product_name":"Office Chair","vendor_name":"Harry","original_price":221,"discounted_price":22,"product_rating":3,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356320534081.jpg","attribute_id":12,"added_qty":1,"attribute_name":"333","color_name":"Red"}]
/// price_detail : {"sub_total":3040,"discount_on_mrp":464,"shipping_charge":0,"total_price":2576}
/// selected_address : {"address_id":"1","customer_name":"","phone_number":"11111111","country_code":"","governate_name":"Farwaniya","governate_id":"3","area_name":"Riqee","area_id":"13","street_no":"Ughvu","avenue":"Buvuvu","building_no":"Uvyfy","floor":"Ycyv","flat":"Ycyv"}

class Data {
  Data({
    this.productList,
    this.priceDetail,
    this.selectedAddress,
  });

  Data.fromJson(dynamic json) {
    if (json['product_list'] != null) {
      productList = [];
      json['product_list'].forEach((v) {
        productList?.add(ProductList.fromJson(v));
      });
    }
    priceDetail = json['price_detail'] != null ? PriceDetail.fromJson(json['price_detail']) : null;
    selectedAddress = json['selected_address'] != null ? SelectedAddress.fromJson(json['selected_address']) : null;
  }
  List<ProductList>? productList;
  PriceDetail? priceDetail;
  SelectedAddress? selectedAddress;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (productList != null) {
      map['product_list'] = productList?.map((v) => v.toJson()).toList();
    }
    if (priceDetail != null) {
      map['price_detail'] = priceDetail?.toJson();
    }
    if (selectedAddress != null) {
      map['selected_address'] = selectedAddress?.toJson();
    }
    return map;
  }
}

/// sub_total : 3040
/// discount_on_mrp : 464
/// shipping_charge : 0
/// total_price : 2576

class PriceDetail {
  PriceDetail({
    this.subTotal,
    this.discountOnMrp,
    this.shippingCharge,
    this.totalPrice,
  });

  PriceDetail.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      subTotal = json['sub_total'];
      discountOnMrp = json['discount_on_mrp'];
      shippingCharge = json['shipping_charge'];
      totalPrice = json['total_price'];
    });
  }
  int? subTotal;
  int? discountOnMrp;
  int? shippingCharge;
  int? totalPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub_total'] = subTotal;
    map['discount_on_mrp'] = discountOnMrp;
    map['shipping_charge'] = shippingCharge;
    map['total_price'] = totalPrice;
    return map;
  }
}

/// id : 6
/// product_name : "Sofa"
/// vendor_name : "Harry"
/// original_price : 544
/// discounted_price : 444
/// product_rating : 0
/// product_image : "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg"
/// attribute_id : 7
/// added_qty : 1
/// attribute_name : "78"
/// color_name : "Green"

class ProductList {
  ProductList({
    this.id,
    this.productName,
    this.vendorName,
    this.originalPrice,
    this.discountedPrice,
    this.productRating,
    this.productImage,
    this.attributeId,
    this.addedQty,
    this.attributeName,
    this.colorName,
  });

  ProductList.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      id = json['id'];
      productName = json['product_name'];
      vendorName = json['vendor_name'];
      originalPrice = json['original_price'];
      discountedPrice = json['discounted_price'];
      productRating = double.parse((json['product_rating']).toString());
      productImage = json['product_image'];
      attributeId = json['attribute_id'];
      addedQty = json['added_qty'];
      attributeName = json['attribute_name'];
      colorName = json['color_name'];
    });
  }
  int? id;
  String? productName;
  String? vendorName;
  int? originalPrice;
  int? discountedPrice;
  double? productRating;
  String? productImage;
  int? attributeId;
  int? addedQty;
  String? attributeName;
  String? colorName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['product_name'] = productName;
    map['vendor_name'] = vendorName;
    map['original_price'] = originalPrice;
    map['discounted_price'] = discountedPrice;
    map['product_rating'] = productRating;
    map['product_image'] = productImage;
    map['attribute_id'] = attributeId;
    map['added_qty'] = addedQty;
    map['attribute_name'] = attributeName;
    map['color_name'] = colorName;
    return map;
  }
}

/// address_id : "1"
/// customer_name : ""
/// phone_number : "11111111"
/// country_code : ""
/// governate_name : "Farwaniya"
/// governate_id : "3"
/// area_name : "Riqee"
/// area_id : "13"
/// street_no : "Ughvu"
/// avenue : "Buvuvu"
/// building_no : "Uvyfy"
/// floor : "Ycyv"
/// flat : "Ycyv"

class SelectedAddress {
  SelectedAddress({
    this.addressId,
    this.customerName,
    this.phoneNumber,
    this.countryCode,
    this.governateName,
    this.governateId,
    this.areaName,
    this.areaId,
    this.streetNo,
    this.avenue,
    this.buildingNo,
    this.floor,
    this.flat,
  });

  SelectedAddress.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      addressId = json['address_id'];
      customerName = json['customer_name'];
      phoneNumber = json['phone_number'];
      countryCode = json['country_code'];
      governateName = json['governate_name'];
      governateId = json['governate_id'];
      areaName = json['area_name'];
      areaId = json['area_id'];
      streetNo = json['street_no'];
      avenue = json['avenue'];
      buildingNo = json['building_no'];
      floor = json['floor'];
      flat = json['flat'];
    });
  }
  String? addressId;
  String? customerName;
  String? phoneNumber;
  String? countryCode;
  String? governateName;
  String? governateId;
  String? areaName;
  String? areaId;
  String? streetNo;
  String? avenue;
  String? buildingNo;
  String? floor;
  String? flat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_id'] = addressId;
    map['customer_name'] = customerName;
    map['phone_number'] = phoneNumber;
    map['country_code'] = countryCode;
    map['governate_name'] = governateName;
    map['governate_id'] = governateId;
    map['area_name'] = areaName;
    map['area_id'] = areaId;
    map['street_no'] = streetNo;
    map['avenue'] = avenue;
    map['building_no'] = buildingNo;
    map['floor'] = floor;
    map['flat'] = flat;
    return map;
  }
}
