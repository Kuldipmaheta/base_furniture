/// success : true
/// message : "success"
/// data : {"product_list":[{"id":9,"product_name":"WardrobeAR","vendor_name":"Harry","original_price":112,"discounted_price":12,"product_rating":4,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356319246677.jpg","is_in_stock":false,"is_fav":0},{"id":1,"product_name":"Sofa","vendor_name":"Sakshi","original_price":1000,"discounted_price":100,"product_rating":3.20000000000000017763568394002504646778106689453125,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17355670107063.png","is_in_stock":false,"is_fav":0},{"id":3,"product_name":"طاولة وسط مستديرة","vendor_name":"shivani","original_price":1500,"discounted_price":600,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356213807556.jpg","is_in_stock":false,"is_fav":0},{"id":10,"product_name":"Office ChairAR","vendor_name":"Harry","original_price":221,"discounted_price":22,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356320534081.jpg","is_in_stock":false,"is_fav":0}]}
/// error : null

class HomeResponseModel {
  HomeResponseModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  HomeResponseModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    error = json['error'];
  }
  bool? success;
  String? message;
  Data? data;
  dynamic error;
  HomeResponseModel copyWith({
    bool? success,
    String? message,
    Data? data,
    dynamic error,
  }) =>
      HomeResponseModel(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
        error: error ?? this.error,
      );
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

/// product_list : [{"id":9,"product_name":"WardrobeAR","vendor_name":"Harry","original_price":112,"discounted_price":12,"product_rating":4,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356319246677.jpg","is_in_stock":false,"is_fav":0},{"id":1,"product_name":"Sofa","vendor_name":"Sakshi","original_price":1000,"discounted_price":100,"product_rating":3.20000000000000017763568394002504646778106689453125,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17355670107063.png","is_in_stock":false,"is_fav":0},{"id":3,"product_name":"طاولة وسط مستديرة","vendor_name":"shivani","original_price":1500,"discounted_price":600,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356213807556.jpg","is_in_stock":false,"is_fav":0},{"id":10,"product_name":"Office ChairAR","vendor_name":"Harry","original_price":221,"discounted_price":22,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356320534081.jpg","is_in_stock":false,"is_fav":0}]

class Data {
  Data({
    this.productList,
  });

  Data.fromJson(dynamic json) {
    if (json['product_list'] != null) {
      productList = [];
      json['product_list'].forEach((v) {
        productList?.add(ProductList.fromJson(v));
      });
    }
  }
  List<ProductList>? productList;
  Data copyWith({
    List<ProductList>? productList,
  }) =>
      Data(
        productList: productList ?? this.productList,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (productList != null) {
      map['product_list'] = productList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 9
/// product_name : "WardrobeAR"
/// vendor_name : "Harry"
/// original_price : 112
/// discounted_price : 12
/// product_rating : 4
/// product_image : "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356319246677.jpg"
/// is_in_stock : false
/// is_fav : 0

class ProductList {
  ProductList({
    this.id,
    this.productName,
    this.vendorName,
    this.originalPrice,
    this.discountedPrice,
    this.productRating,
    this.productImage,
    this.isInStock,
    this.isFav,
  });

  ProductList.fromJson(dynamic json) {
    id = json['id'];
    productName = json['product_name'];
    vendorName = json['vendor_name'];
    originalPrice = json['original_price'];
    discountedPrice = json['discounted_price'];
    productRating = json['product_rating'];
    productImage = json['product_image'];
    isInStock = json['is_in_stock'];
    isFav = json['is_fav'];
  }
  int? id;
  String? productName;
  String? vendorName;
  int? originalPrice;
  int? discountedPrice;
  int? productRating;
  String? productImage;
  bool? isInStock;
  int? isFav;
  ProductList copyWith({
    int? id,
    String? productName,
    String? vendorName,
    int? originalPrice,
    int? discountedPrice,
    int? productRating,
    String? productImage,
    bool? isInStock,
    int? isFav,
  }) =>
      ProductList(
        id: id ?? this.id,
        productName: productName ?? this.productName,
        vendorName: vendorName ?? this.vendorName,
        originalPrice: originalPrice ?? this.originalPrice,
        discountedPrice: discountedPrice ?? this.discountedPrice,
        productRating: productRating ?? this.productRating,
        productImage: productImage ?? this.productImage,
        isInStock: isInStock ?? this.isInStock,
        isFav: isFav ?? this.isFav,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['product_name'] = productName;
    map['vendor_name'] = vendorName;
    map['original_price'] = originalPrice;
    map['discounted_price'] = discountedPrice;
    map['product_rating'] = productRating;
    map['product_image'] = productImage;
    map['is_in_stock'] = isInStock;
    map['is_fav'] = isFav;
    return map;
  }
}
