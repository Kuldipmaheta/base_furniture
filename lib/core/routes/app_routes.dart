import 'package:furniture/export.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/authentication/screens/login_screen.dart';
import '../../features/authentication/screens/registration_screen.dart';
import '../../features/dashboard/dashboard_screen.dart';
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

  static List<GetPage> getPages = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: favoriteScreen, page: () => FavoritesScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: registrationScreen, page: () => RegistrationScreen()),
    GetPage(name: profileScreen, page: () => ProfileScreen()),
    GetPage(name: dashboardScreen, page: () => DashboardScreen()),
  ];
}
