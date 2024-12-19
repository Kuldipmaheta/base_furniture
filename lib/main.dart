import 'package:furniture/core/constant/app_colors.dart';
import 'package:get/get.dart';

import 'core/routes/app_routes.dart';
import 'export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // textTheme: const TextTheme(
        //     bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), bodySmall: TextStyle(fontSize: 14)),
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
      initialRoute: AppRoutes.productZoomScreen,
      getPages: AppRoutes.getPages,
      /*routes: {
        AppRoutes.initialRoute: (context) => const Welcome2Screen(),

        AppRoutes.lastRoute: (context) => const SplashScreen(),
        AppRoutes.productListScreen: (context) => const ProductListScreen(),
        // '/second': (context) => const Welcome2Screen(),
      },*/
    );
  }
}
