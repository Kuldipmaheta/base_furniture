/// sub_total : ""
/// discount_on_mrp : ""
/// shipping_charge : ""
/// total_price : ""

class PriceDetail {
  PriceDetail({
    this.subTotal,
    this.discountOnMrp,
    this.shippingCharge,
    this.totalPrice,
  });

  PriceDetail.fromJson(dynamic json) {
    subTotal = json['sub_total'];
    discountOnMrp = json['discount_on_mrp'];
    shippingCharge = json['shipping_charge'];
    totalPrice = json['total_price'];
  }
  String? subTotal;
  String? discountOnMrp;
  String? shippingCharge;
  String? totalPrice;
  PriceDetail copyWith({
    String? subTotal,
    String? discountOnMrp,
    String? shippingCharge,
    String? totalPrice,
  }) =>
      PriceDetail(
        subTotal: subTotal ?? this.subTotal,
        discountOnMrp: discountOnMrp ?? this.discountOnMrp,
        shippingCharge: shippingCharge ?? this.shippingCharge,
        totalPrice: totalPrice ?? this.totalPrice,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub_total'] = subTotal;
    map['discount_on_mrp'] = discountOnMrp;
    map['shipping_charge'] = shippingCharge;
    map['total_price'] = totalPrice;
    return map;
  }
}
