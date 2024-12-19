import 'package:get/get.dart';

import 'export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: const GetMaterialApp(
            // initialRoute: AppRoutes.homeScreen,
            // getPages: AppRoutes.getPages,
            ));
  }
}
