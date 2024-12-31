class BannerListModel {
  BannerListModel({
    this.bannerList,
  });

  BannerListModel.fromJson(dynamic json) {
    if (json['banner_list'] != null) {
      bannerList = [];
      json['banner_list'].forEach((v) {
        bannerList?.add(BannerList.fromJson(v));
      });
    }
  }
  List<BannerList>? bannerList;
  BannerListModel copyWith({
    List<BannerList>? bannerList,
  }) =>
      BannerListModel(
        bannerList: bannerList ?? this.bannerList,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (bannerList != null) {
      map['banner_list'] = bannerList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// banner_id : 1
/// category_id : 1
/// product_id : 1
/// banner_name : ""
/// banner_image : ""

class BannerList {
  BannerList({
    this.bannerId,
    this.categoryId,
    this.productId,
    this.bannerName,
    this.bannerImage,
  });

  BannerList.fromJson(dynamic json) {
    bannerId = json['banner_id'];
    categoryId = json['category_id'];
    productId = json['product_id'];
    bannerName = json['banner_name'];
    bannerImage = json['banner_image'];
  }
  num? bannerId;
  num? categoryId;
  num? productId;
  String? bannerName;
  String? bannerImage;
  BannerList copyWith({
    num? bannerId,
    num? categoryId,
    num? productId,
    String? bannerName,
    String? bannerImage,
  }) =>
      BannerList(
        bannerId: bannerId ?? this.bannerId,
        categoryId: categoryId ?? this.categoryId,
        productId: productId ?? this.productId,
        bannerName: bannerName ?? this.bannerName,
        bannerImage: bannerImage ?? this.bannerImage,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['banner_id'] = bannerId;
    map['category_id'] = categoryId;
    map['product_id'] = productId;
    map['banner_name'] = bannerName;
    map['banner_image'] = bannerImage;
    return map;
  }
}
