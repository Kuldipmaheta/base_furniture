class MainProduct {
  String? imageUrl;
  String? name;
  String? description;
  double? price;
}

class Furniture {
  final int id;
  final String productName;
  final String vendorName;
  final double originalPrice;
  final double discountedPrice;
  final double productRating;
  final String productImage;
  final bool isInStock;
  final bool isFav;

  Furniture({
    required this.id,
    required this.productName,
    required this.vendorName,
    required this.originalPrice,
    required this.discountedPrice,
    required this.productRating,
    required this.productImage,
    required this.isInStock,
    required this.isFav,
  });

  factory Furniture.fromJson(Map<String, dynamic> json) {
    return Furniture(
      id: json['id'],
      productName: json['product_name'],
      vendorName: json['vendor_name'],
      originalPrice: json['original_price'],
      discountedPrice: json['discounted_price'],
      productRating: json['product_rating'],
      productImage: json['product_image'],
      isInStock: json['is_in_stock'],
      isFav: json['is_fav'],
    );
  }
}

List<Furniture> popularFurnitureList = [
  {
    "id": 0,
    "product_name": "Modern Leather Sofa Set",
    "vendor_name": "Furniture World",
    "original_price": 1200.00,
    "discounted_price": 999.00,
    "product_rating": 4.5,
    "product_image": "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356319246677.jpg",
    "is_in_stock": true,
    "is_fav": false
  },
  {
    "id": 1,
    "product_name": "Solid Wood Dining Table Set",
    "vendor_name": "Home Decor Hub",
    "original_price": 800.00,
    "discounted_price": 699.00,
    "product_rating": 4.2,
    "product_image": "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17355670107063.png",
    "is_in_stock": true,
    "is_fav": false
  },
  {
    "id": 2,
    "product_name": "Queen Size Bed with Storage",
    "vendor_name": "Cozy Corner",
    "original_price": 950.00,
    "discounted_price": 849.00,
    "product_rating": 4.8,
    "product_image": "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356213807556.jpg",
    "is_in_stock": true,
    "is_fav": false
  },
  {
    "id": 3,
    "product_name": "Modern TV Stand",
    "vendor_name": "Tech Haven",
    "original_price": 350.00,
    "discounted_price": 299.00,
    "product_rating": 4.3,
    "product_image": "https://athathi-dev.s3.ap-south-1.amazonaws.com/uploads/product/17356320534081.jpg",
    "is_in_stock": true,
    "is_fav": false
  },
  /*{
    "id": 4,
    "product_name": "Stylish Office Chair",
    "vendor_name": "Work Essentials",
    "original_price": 250.00,
    "discounted_price": 199.00,
    "product_rating": 4.6,
    "product_image": "https://th.bing.com/th/id/OIP.H-S3UVP5lFX0qclDmIYzOwHaHa?rs=1&pid=ImgDetMain",
    "is_in_stock": true,
    "is_fav": false
  },*/
  /*{
    "id": 5,
    "product_name": "Minimalist Bedroom Set",
    "vendor_name": "Home Haven",
    "original_price": 1500.00,
    "discounted_price": 1299.00,
    "product_rating": 4.7,
    "product_image": "https://example.com/bedroom_set.jpg",
    "is_in_stock": true,
    "is_fav": false
  },
  {
    "id": 6,
    "product_name": "Rustic Wooden Coffee Table",
    "vendor_name": "Vintage Vibes",
    "original_price": 400.00,
    "discounted_price": 349.00,
    "product_rating": 4.4,
    "product_image": "https://example.com/coffee_table.jpg",
    "is_in_stock": true,
    "is_fav": false
  },
  {
    "id": 7,
    "product_name": "Modular Kitchen Set",
    "vendor_name": "Kitchen Kraft",
    "original_price": 2500.00,
    "discounted_price": 2299.00,
    "product_rating": 4.9,
    "product_image": "https://example.com/modular_kitchen.jpg",
    "is_in_stock": true,
    "is_fav": false
  },
  {
    "id": 8,
    "product_name": "Recliner Sofa",
    "vendor_name": "Comfort Zone",
    "original_price": 800.00,
    "discounted_price": 699.00,
    "product_rating": 4.6,
    "product_image": "https://example.com/recliner_sofa.jpg",
    "is_in_stock": true,
    "is_fav": false
  },
  {
    "id": 9,
    "product_name": "Study Table with Chair",
    "vendor_name": "Student Zone",
    "original_price": 300.00,
    "discounted_price": 249.00,
    "product_rating": 4.2,
    "product_image": "https://example.com/study_table.jpg",
    "is_in_stock": true,
    "is_fav": false
  }*/
].map((item) => Furniture.fromJson(item)).toList();
