/// success : true
/// message : null
/// data : {"total_records":5,"current_page":1,"next_page":2,"min_price":0,"max_price":0,"category_list":[{"category_id":45,"category_name":"Folding Chairs","category_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/category/1734339629.png"},{"category_id":43,"category_name":"Iconic Chairs","category_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/category/1734339552.png"},{"category_id":55,"category_name":"Rocking Chairs","category_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/category/1734340079.png"},{"category_id":62,"category_name":"test","category_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/category/1733292835.jpeg"},{"category_id":60,"category_name":"wooden sofas","category_image":"https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/category/1734339647.png"}]}
/// error : null

class CategoryModel {
  CategoryModel({
    this.success,
    this.message,
    this.data,
    this.error,
  });

  CategoryModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    error = json['error'];
  }
  bool? success;
  dynamic message;
  Data? data;
  dynamic error;
  CategoryModel copyWith({
    bool? success,
    dynamic message,
    Data? data,
    dynamic error,
  }) =>
      CategoryModel(
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

/// category_id : 45
/// category_name : "Folding Chairs"
/// category_image : "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/category/1734339629.png"

class CategoryList {
  CategoryList({
    this.categoryId,
    this.categoryName,
    this.categoryImage,
  });

  CategoryList.fromJson(dynamic json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
  }
  int? categoryId;
  String? categoryName;
  String? categoryImage;
  CategoryList copyWith({
    int? categoryId,
    String? categoryName,
    String? categoryImage,
  }) =>
      CategoryList(
        categoryId: categoryId ?? this.categoryId,
        categoryName: categoryName ?? this.categoryName,
        categoryImage: categoryImage ?? this.categoryImage,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = categoryId;
    map['category_name'] = categoryName;
    map['category_image'] = categoryImage;
    return map;
  }
}

class Data {
  Data({
    this.totalRecords,
    this.currentPage,
    this.nextPage,
    this.minPrice,
    this.maxPrice,
    this.categoryList,
  });

  Data.fromJson(dynamic json) {
    totalRecords = json['total_records'];
    currentPage = json['current_page'];
    nextPage = json['next_page'];
    minPrice = json['min_price'];
    maxPrice = json['max_price'];
    if (json['category_list'] != null) {
      categoryList = [];
      json['category_list'].forEach((v) {
        categoryList?.add(CategoryList.fromJson(v));
      });
    }
  }
  int? totalRecords;
  int? currentPage;
  int? nextPage;
  int? minPrice;
  int? maxPrice;
  List<CategoryList>? categoryList;
  Data copyWith({
    int? totalRecords,
    int? currentPage,
    int? nextPage,
    int? minPrice,
    int? maxPrice,
    List<CategoryList>? categoryList,
  }) =>
      Data(
        totalRecords: totalRecords ?? this.totalRecords,
        currentPage: currentPage ?? this.currentPage,
        nextPage: nextPage ?? this.nextPage,
        minPrice: minPrice ?? this.minPrice,
        maxPrice: maxPrice ?? this.maxPrice,
        categoryList: categoryList ?? this.categoryList,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_records'] = totalRecords;
    map['current_page'] = currentPage;
    map['next_page'] = nextPage;
    map['min_price'] = minPrice;
    map['max_price'] = maxPrice;
    if (categoryList != null) {
      map['category_list'] = categoryList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
