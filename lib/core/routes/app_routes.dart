import 'package:furniture/export.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/authentication/screens/login_screen.dart';
import '../../features/authentication/screens/registration_screen.dart';
import '../../features/dashboard/cart/cart_screen.dart';
import '../../features/dashboard/category/screens/category_screen.dart';
import '../../features/dashboard/dashboard_screen.dart';
import '../../features/dashboard/products/review/customer_review_screen.dart';
import '../../features/dashboard/products/screens/product_detail_screen.dart';
import '../../features/dashboard/products/screens/product_list_screen.dart';
import '../../features/dashboard/products/screens/product_zoom_screen.dart';
import '../../features/dashboard/profile/change_language/screens/change_language_screen.dart';
import '../../features/dashboard/profile/edit_profile/screens/edit_profile_screen.dart';
import '../../features/dashboard/profile/my_address/screens/acc_add_address_screen.dart';
import '../../features/dashboard/profile/my_address/screens/my_address_screen.dart';
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
  static const String chooseLanguageScreen = "/chooseLanguageScreen";
  static const String editProfileScreen = "/editProfileScreen";
  static const String customerReviewScreen = "/customerReviewScreen";
  static const String myAddressScreen = "/myAddressScreen";
  static const String accAddAddressScreen = "/accAddAddressScreen";
  static const String changeLanguageScreen = "/changeLanguageScreen";

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
    GetPage(name: chooseLanguageScreen, page: () => const ChooseLanguageScreen()),
    GetPage(name: editProfileScreen, page: () => const EditProfileScreen()),
    GetPage(name: customerReviewScreen, page: () => const CustomerReviewScreen()),
    GetPage(name: myAddressScreen, page: () => const MyAddressScreen()),
    GetPage(name: accAddAddressScreen, page: () => const AccAddAddressScreen()),
    GetPage(name: changeLanguageScreen, page: () => const ChangeLanguageScreen()),
  ];
}
