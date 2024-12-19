import 'package:furniture/export.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/authentication/screens/login_screen.dart';
import '../../features/authentication/screens/registration_screen.dart';
import '../../features/dashboard/cart/cart_screen.dart';
import '../../features/dashboard/category/screens/category_screen.dart';
import '../../features/dashboard/dashboard_screen.dart';
import '../../features/dashboard/products/screens/product_detail_screen.dart';
import '../../features/dashboard/products/screens/product_list_screen.dart';
import '../../features/dashboard/products/screens/product_zoom_screen.dart';
import '../../features/dashboard/profile/profile_screen.dart';

class AppRoutes {
  static String splashScreen = "/splashScreen";
  static const String initialRoute = "/";
  static const String productListScreen = "/productListScreen";
  static const String homeScreen = "/homeScreen";
  static const String favoriteScreen = "/favoriteScreen";
  static const String loginScreen = "/loginScreen";
  static const String registrationScreen = "/registrationScreen";
  static const String profileScreen = "/profileScreen";
  static const String dashboardScreen = "/dashboardScreen";
  static const String productDetailScreen = "/productDetailScreen";
  static const String cartScreen = "/cartScreen";
  static const String categoryScreen = "/categoryScreen";
  static const String productZoomScreen = "/productZoomScreen";

  static List<GetPage> getPages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: favoriteScreen, page: () => const FavoritesScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: registrationScreen, page: () => const RegistrationScreen()),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
    GetPage(name: dashboardScreen, page: () => const DashboardScreen()),
    GetPage(name: productDetailScreen, page: () => const ProductDetailScreen()),
    GetPage(name: productListScreen, page: () => const ProductListScreen()),
    GetPage(name: cartScreen, page: () => const CartScreen()),
    GetPage(name: categoryScreen, page: () => const CategoryScreen()),
    GetPage(name: productZoomScreen, page: () => const ProductZoomScreen()),
  ];
}
