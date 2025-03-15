class ApiEndPoints {
  static const kHostUrl = 'https://athathi.stag.vrinsoft.in';
  static const kVersion = '/api/v1';
  static const kBaseUrl = "$kHostUrl$kVersion";

  //authentication
  static const String kUserLogin = "login";

  //cart
  static const getCartDtl = "$kHostUrl/get_cart_detail?language_id=1&device_id=1";
}
