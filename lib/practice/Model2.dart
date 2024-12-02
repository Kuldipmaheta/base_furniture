/// id : 0
/// product_name : "Modern Leather Sofa Set"
/// vendor_name : "Furniture World"
/// original_price : 1200.00
/// discounted_price : 999.00
/// product_rating : 4.5
/// product_image : "https://example.com/leather_sofa.jpg"
/// is_in_stock : true
/// is_fav : false

class Model2 {
  Model2({
      this.id,
      this.productName,
      this.vendorName,
      this.originalPrice,
      this.discountedPrice,
      this.productRating,
      this.productImage,
      this.isInStock,
      this.isFav,});

  Model2.fromJson(dynamic json) {
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
  double? originalPrice;
  double? discountedPrice;
  double? productRating;
  String? productImage;
  bool? isInStock;
  bool? isFav;
Model2 copyWith({  int? id,
  String? productName,
  String? vendorName,
  double? originalPrice,
  double? discountedPrice,
  double? productRating,
  String? productImage,
  bool? isInStock,
  bool? isFav,
}) => Model2(  id: id ?? this.id,
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


  static List<Model2> dummyProductList = [
  Model2(
  id: 1,
  productName: "Modern Leather Sofa Set",
  vendorName: "Furniture World",
  originalPrice: 1200.00,
  discountedPrice: 999.00,
  productRating: 4.5,
  productImage: "https://example.com/leather_sofa.jpg",
  isInStock: true,
  isFav: false,
  ),
  Model2(
  id: 2,
  productName: "Wooden Dining Table",
  vendorName: "Home Center",
  originalPrice: 800.00,
  discountedPrice: 700.00,
  productRating: 4.3,
  productImage: "https://example.com/dining_table.jpg",
  isInStock: true,
  isFav: false,
  ),
  Model2(
  id: 3,
  productName: "Queen Size Bed",
  vendorName: "Dreamland Furniture",
  originalPrice: 1500.00,
  discountedPrice: 1350.00,
  productRating: 4.6,
  productImage: "https://example.com/queen_bed.jpg",
  isInStock: true,
  isFav: true,
  ),
  Model2(
  id: 4,
  productName: "Office Chair",
  vendorName: "Office Depot",
  originalPrice: 250.00,
  discountedPrice: 199.00,
  productRating: 4.2,
  productImage: "https://example.com/office_chair.jpg",
  isInStock: false,
  isFav: false,
  ),
  Model2(
  id: 5,
  productName: "Recliner Sofa",
  vendorName: "RelaxPro",
  originalPrice: 1800.00,
  discountedPrice: 1600.00,
  productRating: 4.7,
  productImage: "https://example.com/recliner_sofa.jpg",
  isInStock: true,
  isFav: true,
  ),
  Model2(
  id: 6,
  productName: "Bookshelf",
  vendorName: "Ikea",
  originalPrice: 300.00,
  discountedPrice: 250.00,
  productRating: 4.4,
  productImage: "https://example.com/bookshelf.jpg",
  isInStock: true,
  isFav: false,
  ),
  Model2(
  id: 7,
  productName: "Coffee Table",
  vendorName: "Urban Ladder",
  originalPrice: 150.00,
  discountedPrice: 120.00,
  productRating: 4.1,
  productImage: "https://example.com/coffee_table.jpg",
  isInStock: true,
  isFav: false,
  ),
  Model2(
  id: 8,
  productName: "TV Unit",
  vendorName: "Pepperfry",
  originalPrice: 600.00,
  discountedPrice: 500.00,
  productRating: 4.3,
  productImage: "https://example.com/tv_unit.jpg",
  isInStock: false,
  isFav: false,
  ),
  Model2(
  id: 9,
  productName: "Study Table",
  vendorName: "StudyWorld",
  originalPrice: 400.00,
  discountedPrice: 350.00,
  productRating: 4.5,
  productImage: "https://example.com/study_table.jpg",
  isInStock: true,
  isFav: true,
  ),
  Model2(
  id: 10,
  productName: "Kids' Bunk Bed",
  vendorName: "Tiny Homes",
  originalPrice: 1000.00,
  discountedPrice: 850.00,
  productRating: 4.6,
  productImage: "https://example.com/bunk_bed.jpg",
  isInStock: true,
  isFav: true,
  ),
  Model2(
  id: 11,
  productName: "Wall Mirror",
  vendorName: "Reflectionz",
  originalPrice: 200.00,
  discountedPrice: 180.00,
  productRating: 4.2,
  productImage: "https://example.com/wall_mirror.jpg",
  isInStock: true,
  isFav: false,
  ),
  Model2(
  id: 12,
  productName: "Modular Wardrobe",
  vendorName: "Closet Makers",
  originalPrice: 2000.00,
  discountedPrice: 1800.00,
  productRating: 4.8,
  productImage: "https://example.com/wardrobe.jpg",
  isInStock: false,
  isFav: false,
  ),
  Model2(
  id: 13,
  productName: "Outdoor Patio Set",
  vendorName: "Garden Joy",
  originalPrice: 1200.00,
  discountedPrice: 999.00,
  productRating: 4.4,
  productImage: "https://example.com/patio_set.jpg",
  isInStock: true,
  isFav: true,
  ),
  Model2(
  id: 14,
  productName: "Rocking Chair",
  vendorName: "Old Times",
  originalPrice: 350.00,
  discountedPrice: 300.00,
  productRating: 4.2,
  productImage: "https://example.com/rocking_chair.jpg",
  isInStock: true,
  isFav: false,
  ),
  Model2(
  id: 15,
  productName: "Bar Stool",
  vendorName: "BarCraft",
  originalPrice: 150.00,
  discountedPrice: 130.00,
  productRating: 4.3,
  productImage: "https://example.com/bar_stool.jpg",
  isInStock: true,
  isFav: false,
  ),
  ];
}