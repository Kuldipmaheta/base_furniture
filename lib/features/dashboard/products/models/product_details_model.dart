import 'package:furniture/design/utils/global.dart';
import 'package:furniture/features/dashboard/home/models/Home_response_model.dart';

/// success : true
/// message : "success"
/// data : {"id":15,"added_quantity":0,"product_name":"Dining table","vendor_name":"shivani","category_name":"Folding Chairs","product_images":["https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358835569973.jpg"],"original_price":50000,"discounted_price":20000,"available_quantity":100,"color_name":"Yellow","product_rating":0,"is_fav":false,"product_details":{"brand":"wooden furniture","assembly":"test","dimentions_in_cm":"H*10 W*10 L*10","dimentions_in_inches":"5","primary_material":"wooden","room_type":"خشبي","seating_height":"200","warranty":"2","weight":"100"},"size_list":[{"attribute_id":18,"size_name":"23","original_price":50000,"discounted_price":20000,"available_quantity":100,"added_quantity":0},{"attribute_id":19,"size_name":"26","original_price":60000,"discounted_price":30000,"available_quantity":100,"added_quantity":0}],"specification":"A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\n\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\n\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.","other_vendors":[{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":544,"discounted_price":444,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","is_fav":false},{"id":7,"product_name":"BookshelfEN","vendor_name":"Harry","original_price":123,"discounted_price":111,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318061463.jpg","is_fav":false},{"id":8,"product_name":"Coffee Table","vendor_name":"Harry","original_price":111,"discounted_price":21,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318525767.jpg","is_fav":false},{"id":12,"product_name":"new test","vendor_name":"Sakshi","original_price":1500,"discounted_price":300,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358014311222.jpg","is_fav":false},{"id":13,"product_name":"new test","vendor_name":"Sakshi","original_price":1000,"discounted_price":200,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358023511779.jpg","is_fav":false},{"id":17,"product_name":"Test price","vendor_name":"Sakshi","original_price":1000,"discounted_price":10,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17361402599010.jpg","is_fav":false}],"related_products":[{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":544,"discounted_price":444,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","is_fav":false},{"id":7,"product_name":"BookshelfEN","vendor_name":"Harry","original_price":123,"discounted_price":111,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318061463.jpg","is_fav":false},{"id":8,"product_name":"Coffee Table","vendor_name":"Harry","original_price":111,"discounted_price":21,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318525767.jpg","is_fav":false},{"id":12,"product_name":"new test","vendor_name":"Sakshi","original_price":1500,"discounted_price":300,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358014311222.jpg","is_fav":false},{"id":13,"product_name":"new test","vendor_name":"Sakshi","original_price":1000,"discounted_price":200,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358023511779.jpg","is_fav":false},{"id":15,"product_name":"Dining table","vendor_name":"shivani","original_price":50000,"discounted_price":20000,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358835569973.jpg","is_fav":false},{"id":17,"product_name":"Test price","vendor_name":"Sakshi","original_price":1000,"discounted_price":10,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17361402599010.jpg","is_fav":false}]}
/// error : null

class ProductDetailsModel {
  ProductDetailsModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  ProductDetailsModel.fromJson(dynamic json) {
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

/// brand : "wooden furniture"
/// assembly : "test"
/// dimentions_in_cm : "H*10 W*10 L*10"
/// dimentions_in_inches : "5"
/// primary_material : "wooden"
/// room_type : "خشبي"
/// seating_height : "200"
/// warranty : "2"
/// weight : "100"

class ProductDetails {
  ProductDetails({
    this.brand,
    this.assembly,
    this.dimentionsInCm,
    this.dimentionsInInches,
    this.primaryMaterial,
    this.roomType,
    this.seatingHeight,
    this.warranty,
    this.weight,
  });

  ProductDetails.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      brand = json['brand'];
      assembly = json['assembly'];
      dimentionsInCm = json['dimentions_in_cm'];
      dimentionsInInches = json['dimentions_in_inches'];
      primaryMaterial = json['primary_material'];
      roomType = json['room_type'];
      seatingHeight = json['seating_height'];
      warranty = json['warranty'];
      weight = json['weight'];
    });
  }
  String? brand;
  String? assembly;
  String? dimentionsInCm;
  String? dimentionsInInches;
  String? primaryMaterial;
  String? roomType;
  String? seatingHeight;
  String? warranty;
  String? weight;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['brand'] = brand;
    map['assembly'] = assembly;
    map['dimentions_in_cm'] = dimentionsInCm;
    map['dimentions_in_inches'] = dimentionsInInches;
    map['primary_material'] = primaryMaterial;
    map['room_type'] = roomType;
    map['seating_height'] = seatingHeight;
    map['warranty'] = warranty;
    map['weight'] = weight;
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
/// is_fav : false

class RelatedProducts {
  RelatedProducts({
    this.id,
    this.productName,
    this.vendorName,
    this.originalPrice,
    this.discountedPrice,
    this.productRating,
    this.productImage,
    this.isFav,
  });

  RelatedProducts.fromJson(dynamic json) {
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

/// attribute_id : 18
/// size_name : "23"
/// original_price : 50000
/// discounted_price : 20000
/// available_quantity : 100
/// added_quantity : 0

class SizeList {
  SizeList({
    this.attributeId,
    this.sizeName,
    this.originalPrice,
    this.discountedPrice,
    this.availableQuantity,
    this.addedQuantity,
  });

  SizeList.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      attributeId = json['attribute_id'];
      sizeName = json['size_name'];
      originalPrice = json['original_price'];
      discountedPrice = json['discounted_price'];
      availableQuantity = json['available_quantity'];
      addedQuantity = json['added_quantity'];
    });
  }
  int? attributeId;
  String? sizeName;
  int? originalPrice;
  int? discountedPrice;
  int? availableQuantity;
  int? addedQuantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['attribute_id'] = attributeId;
    map['size_name'] = sizeName;
    map['original_price'] = originalPrice;
    map['discounted_price'] = discountedPrice;
    map['available_quantity'] = availableQuantity;
    map['added_quantity'] = addedQuantity;
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
/// is_fav : false

class OtherVendors {
  OtherVendors({
    this.id,
    this.productName,
    this.vendorName,
    this.originalPrice,
    this.discountedPrice,
    this.productRating,
    this.productImage,
    this.isFav,
  });

  OtherVendors.fromJson(dynamic json) {
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

/// id : 15
/// added_quantity : 0
/// product_name : "Dining table"
/// vendor_name : "shivani"
/// category_name : "Folding Chairs"
/// product_images : ["https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358835569973.jpg"]
/// original_price : 50000
/// discounted_price : 20000
/// available_quantity : 100
/// color_name : "Yellow"
/// product_rating : 0
/// is_fav : false
/// product_details : {"brand":"wooden furniture","assembly":"test","dimentions_in_cm":"H*10 W*10 L*10","dimentions_in_inches":"5","primary_material":"wooden","room_type":"خشبي","seating_height":"200","warranty":"2","weight":"100"}
/// size_list : [{"attribute_id":18,"size_name":"23","original_price":50000,"discounted_price":20000,"available_quantity":100,"added_quantity":0},{"attribute_id":19,"size_name":"26","original_price":60000,"discounted_price":30000,"available_quantity":100,"added_quantity":0}]
/// specification : "A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\n\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\n\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.\r\nA table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things.A table is an item of furniture with a raised flat top and is supported most commonly by 1 to 4 legs (although some can have more). It is used as a surface for working at, eating from or on which to place things."
/// other_vendors : [{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":544,"discounted_price":444,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","is_fav":false},{"id":7,"product_name":"BookshelfEN","vendor_name":"Harry","original_price":123,"discounted_price":111,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318061463.jpg","is_fav":false},{"id":8,"product_name":"Coffee Table","vendor_name":"Harry","original_price":111,"discounted_price":21,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318525767.jpg","is_fav":false},{"id":12,"product_name":"new test","vendor_name":"Sakshi","original_price":1500,"discounted_price":300,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358014311222.jpg","is_fav":false},{"id":13,"product_name":"new test","vendor_name":"Sakshi","original_price":1000,"discounted_price":200,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358023511779.jpg","is_fav":false},{"id":17,"product_name":"Test price","vendor_name":"Sakshi","original_price":1000,"discounted_price":10,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17361402599010.jpg","is_fav":false}]
/// related_products : [{"id":6,"product_name":"Sofa","vendor_name":"Harry","original_price":544,"discounted_price":444,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356317465426.jpg","is_fav":false},{"id":7,"product_name":"BookshelfEN","vendor_name":"Harry","original_price":123,"discounted_price":111,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318061463.jpg","is_fav":false},{"id":8,"product_name":"Coffee Table","vendor_name":"Harry","original_price":111,"discounted_price":21,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356318525767.jpg","is_fav":false},{"id":12,"product_name":"new test","vendor_name":"Sakshi","original_price":1500,"discounted_price":300,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358014311222.jpg","is_fav":false},{"id":13,"product_name":"new test","vendor_name":"Sakshi","original_price":1000,"discounted_price":200,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358023511779.jpg","is_fav":false},{"id":15,"product_name":"Dining table","vendor_name":"shivani","original_price":50000,"discounted_price":20000,"product_rating":0,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17358835569973.jpg","is_fav":false},{"id":17,"product_name":"Test price","vendor_name":"Sakshi","original_price":1000,"discounted_price":10,"product_rating":2.5,"product_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17361402599010.jpg","is_fav":false}]

class Data {
  Data({
    this.id,
    this.addedQuantity,
    this.productName,
    this.vendorName,
    this.categoryName,
    this.productImages,
    this.originalPrice,
    this.discountedPrice,
    this.availableQuantity,
    this.colorName,
    this.productRating,
    this.isFav,
    this.productDetails,
    this.sizeList,
    this.specification,
    this.otherVendors,
    this.relatedProducts,
  });

  Data.fromJson(dynamic json) {
    safeJson(json, (parsedJson) {
      id = json['id'];
      addedQuantity = json['added_quantity'];
      productName = json['product_name'];
      vendorName = json['vendor_name'];
      categoryName = json['category_name'];
      productImages = json['product_images'] != null ? json['product_images'].cast<String>() : [];
      originalPrice = json['original_price'];
      discountedPrice = json['discounted_price'];
      availableQuantity = json['available_quantity'];
      colorName = json['color_name'];
      productRating = double.parse((json['product_rating']).toString());
      isFav = json['is_fav'];
      productDetails = json['product_details'] != null ? ProductDetails.fromJson(json['product_details']) : null;
      if (json['size_list'] != null) {
        sizeList = [];
        json['size_list'].forEach((v) {
          sizeList?.add(SizeList.fromJson(v));
        });
      }
      specification = json['specification'];
      if (json['other_vendors'] != null) {
        otherVendors = [];
        json['other_vendors'].forEach((v) {
          otherVendors?.add(ProductList.fromJson(v));
        });
      }
      if (json['related_products'] != null) {
        relatedProducts = [];
        json['related_products'].forEach((v) {
          relatedProducts?.add(ProductList.fromJson(v));
        });
      }
    });
  }

  int? id;
  int? addedQuantity;
  String? productName;
  String? vendorName;
  String? categoryName;
  List<String>? productImages;
  int? originalPrice;
  int? discountedPrice;
  int? availableQuantity;
  String? colorName;
  double? productRating;
  bool? isFav;
  ProductDetails? productDetails;
  List<SizeList>? sizeList;
  String? specification;
  List<ProductList>? otherVendors;
  List<ProductList>? relatedProducts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['added_quantity'] = addedQuantity;
    map['product_name'] = productName;
    map['vendor_name'] = vendorName;
    map['category_name'] = categoryName;
    map['product_images'] = productImages;
    map['original_price'] = originalPrice;
    map['discounted_price'] = discountedPrice;
    map['available_quantity'] = availableQuantity;
    map['color_name'] = colorName;
    map['product_rating'] = productRating;
    map['is_fav'] = isFav;
    if (productDetails != null) {
      map['product_details'] = productDetails?.toJson();
    }
    if (sizeList != null) {
      map['size_list'] = sizeList?.map((v) => v.toJson()).toList();
    }
    map['specification'] = specification;
    if (otherVendors != null) {
      map['other_vendors'] = otherVendors?.map((v) => v.toJson()).toList();
    }
    if (relatedProducts != null) {
      map['related_products'] = relatedProducts?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
