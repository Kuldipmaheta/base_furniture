import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/features/dashboard/products/screens/product_list_screen.dart';
import 'package:furniture/practice/search_empty_screen.dart';
import 'package:furniture/practice/getx/shopping_page.dart';
import 'package:furniture/practice/signature_page.dart';
import 'core/constant/strings.dart';
import 'design/my_orders_screen.dart';
import 'design/profile_screen.dart';
import 'design/profile_setup.dart';
import 'export.dart';
import 'features/dashboard/category/screens/category_screen.dart';
import 'features/dashboard/products/screens/filter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), bodySmall: TextStyle(fontSize: 14)),
        // dividerColor: Colors.transparent,
        // primarySwatch: Colors.blue,
        /*elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Color(0xFF95622D),
              foregroundColor: Colors.white),
        ),*/
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.kWhiteColor),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: {
        AppRoutes.initialRoute: (context) => const FilterScreen(),
        AppRoutes.lastRoute: (context) => const ShoppingPage(),
        AppRoutes.productListScreen: (context) => const ProductListScreen(),
        // '/second': (context) => const Welcome2Screen(),
      },
    );
  }
}
