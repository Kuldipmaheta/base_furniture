import 'package:get/get.dart';
import 'core/routes/app_routes.dart';
import 'export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: GetMaterialApp(
            // initialRoute: AppRoutes.homeScreen,
            // getPages: AppRoutes.getPages,
            ));
  }
}
