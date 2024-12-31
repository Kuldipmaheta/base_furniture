/// success : true
/// message : null
/// data : {"total_records":0,"current_page":1,"next_page":2,"category_name":"","product_list":[{"id":0,"product_name":"","vendor_name":"","original_price":500.00,"discounted_price":400.00,"product_rating":4.5,"product_image":"","is_in_stock":true,"is_fav":false}]}
/// error : null

class ProductListModel {
  ProductListModel({
    this.totalRecords,
    this.currentPage,
    this.nextPage,
    this.categoryName,
    this.productList,
  });

  ProductListModel.fromJson(dynamic json) {
    totalRecords = json['total_records'];
    currentPage = json['current_page'];
    nextPage = json['next_page'];
    categoryName = json['category_name'];
    if (json['product_list'] != null) {
      productList = [];
      json['product_list'].forEach((v) {
        productList?.add(ProductList.fromJson(v));
      });
    }
  }

  num? totalRecords;
  num? currentPage;
  num? nextPage;
  String? categoryName;
  List<ProductList>? productList;

  ProductListModel copyWith({
    num? totalRecords,
    num? currentPage,
    num? nextPage,
    String? categoryName,
    List<ProductList>? productList,
  }) =>
      ProductListModel(
        totalRecords: totalRecords ?? this.totalRecords,
        currentPage: currentPage ?? this.currentPage,
        nextPage: nextPage ?? this.nextPage,
        categoryName: categoryName ?? this.categoryName,
        productList: productList ?? this.productList,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_records'] = totalRecords;
    map['current_page'] = currentPage;
    map['next_page'] = nextPage;
    map['category_name'] = categoryName;
    if (productList != null) {
      map['product_list'] = productList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 0
/// product_name : ""
/// vendor_name : ""
/// original_price : 500.00
/// discounted_price : 400.00
/// product_rating : 4.5
/// product_image : ""
/// is_in_stock : true
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
    this.isInStock,
    this.isFav,
    this.isAddedCart,
    this.size,
    this.color,
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
    isAddedCart = json['is_added_cart'];
    size = json['size'];
    color = json['color'];
  }
  num? id;
  String? productName;
  String? vendorName;
  num? originalPrice;
  num? discountedPrice;
  num? productRating;
  String? productImage;
  bool? isInStock;
  bool? isFav;
  bool? isAddedCart;
  String? size;
  String? color;
  ProductList copyWith({
    num? id,
    String? productName,
    String? vendorName,
    num? originalPrice,
    num? discountedPrice,
    num? productRating,
    String? productImage,
    bool? isInStock,
    bool? isFav,
    bool? isAddedCart,
    String? size,
    String? color,
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
        isAddedCart: isAddedCart ?? this.isAddedCart,
        size: size ?? this.size,
        color: color ?? this.color,
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
    map['is_added_cart'] = isAddedCart;
    map['size'] = size;
    map['color'] = color;
    return map;
  }
}
