import 'package:furniture/design/utils/global.dart';

/// success : true
/// message : "success"
/// data : {"total_records":15,"current_page":1,"next_page":2,"product_list":[{"id":18,"product_name":"Bar cabinate","vendor_name":"shivani","original_price":9000,"discounted_price":6500,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17362293985691.png","is_fav":false},{"id":17,"product_name":"Test price","vendor_name":"Sakshi","original_price":800,"discounted_price":10,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17361402599010.jpg","is_fav":false},{"id":15,"product_name":"Dining table","vendor_name":"shivani","original_price":50000,"discounted_price":30000,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358835569973.jpg","is_fav":false},{"id":13,"product_name":"new test","vendor_name":"Sakshi","original_price":1000,"discounted_price":200,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358023511779.jpg","is_fav":false},{"id":12,"product_name":"new test","vendor_name":"Sakshi","original_price":1500,"discounted_price":300,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358014311222.jpg","is_fav":false},{"id":11,"product_name":"Wooden wardrobeWooden wardrobe Wooden wardrobe Wooden wardrobe Wooden wardrobe","vendor_name":"Sakshi","original_price":212,"discounted_price":100,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17357951165817.jpg","is_fav":false},{"id":10,"product_name":"Office Chair","vendor_name":"Harry","original_price":221,"discounted_price":22,"product_rating":3,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356320534081.jpg","is_fav":false},{"id":9,"product_name":"Wardrobe","vendor_name":"Harry","original_price":112,"discounted_price":12,"product_rating":3.3333333333333001746723311953246593475341796875,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356319246677.jpg","is_fav":false},{"id":8,"product_name":"Coffee Table","vendor_name":"Harry","original_price":111,"discounted_price":21,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318525767.jpg","is_fav":false},{"id":7,"product_name":"BookshelfEN","vendor_name":"Harry","original_price":123,"discounted_price":111,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318061463.jpg","is_fav":false}]}
/// error : null

class ProductModel {
  ProductModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  ProductModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    error = json['error'];
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

/// total_records : 15
/// current_page : 1
/// next_page : 2
/// product_list : [{"id":18,"product_name":"Bar cabinate","vendor_name":"shivani","original_price":9000,"discounted_price":6500,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17362293985691.png","is_fav":false},{"id":17,"product_name":"Test price","vendor_name":"Sakshi","original_price":800,"discounted_price":10,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17361402599010.jpg","is_fav":false},{"id":15,"product_name":"Dining table","vendor_name":"shivani","original_price":50000,"discounted_price":30000,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358835569973.jpg","is_fav":false},{"id":13,"product_name":"new test","vendor_name":"Sakshi","original_price":1000,"discounted_price":200,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358023511779.jpg","is_fav":false},{"id":12,"product_name":"new test","vendor_name":"Sakshi","original_price":1500,"discounted_price":300,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358014311222.jpg","is_fav":false},{"id":11,"product_name":"Wooden wardrobeWooden wardrobe Wooden wardrobe Wooden wardrobe Wooden wardrobe","vendor_name":"Sakshi","original_price":212,"discounted_price":100,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17357951165817.jpg","is_fav":false},{"id":10,"product_name":"Office Chair","vendor_name":"Harry","original_price":221,"discounted_price":22,"product_rating":3,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356320534081.jpg","is_fav":false},{"id":9,"product_name":"Wardrobe","vendor_name":"Harry","original_price":112,"discounted_price":12,"product_rating":3.3333333333333001746723311953246593475341796875,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356319246677.jpg","is_fav":false},{"id":8,"product_name":"Coffee Table","vendor_name":"Harry","original_price":111,"discounted_price":21,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318525767.jpg","is_fav":false},{"id":7,"product_name":"BookshelfEN","vendor_name":"Harry","original_price":123,"discounted_price":111,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318061463.jpg","is_fav":false}]

class Data {
  Data({
    this.totalRecords,
    this.currentPage,
    this.nextPage,
    this.productList,
  });

  Data.fromJson(dynamic json) {
    totalRecords = json['total_records'];
    currentPage = json['current_page'];
    nextPage = json['next_page'];
    if (json['product_list'] != null) {
      productList = [];
      json['product_list'].forEach((v) {
        productList?.add(ProductList.fromJson(v));
      });
    }
  }
  int? totalRecords;
  int? currentPage;
  int? nextPage;
  List<ProductList>? productList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_records'] = totalRecords;
    map['current_page'] = currentPage;
    map['next_page'] = nextPage;
    if (productList != null) {
      map['product_list'] = productList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 18
/// product_name : "Bar cabinate"
/// vendor_name : "shivani"
/// original_price : 9000
/// discounted_price : 6500
/// product_rating : 0
/// product_image : "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17362293985691.png"
/// is_fav : false

class ProductList {
  ProductList({
    this.id,
    this.productName,
    this.vendorName,
    this.originalPrice,
    this.discountedPrice,
    this.productRating,
    this.productImage,
    this.isFav,
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
      isFav = json['is_fav'];
    });
  }
  int? id;
  String? productName;
  String? vendorName;
  int? originalPrice;
  int? discountedPrice;
  double? productRating;
  String? productImage;
  bool? isFav;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['product_name'] = productName;
    map['vendor_name'] = vendorName;
    map['original_price'] = originalPrice;
    map['discounted_price'] = discountedPrice;
    map['product_rating'] = productRating;
    map['product_image'] = productImage;
    map['is_fav'] = isFav;
    return map;
  }
}
