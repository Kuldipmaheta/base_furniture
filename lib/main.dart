

import 'package:furniture/practice/search_empty_screen.dart';

import 'core/constant/strings.dart';
import 'design/profile_screen.dart';
import 'design/profile_setup.dart';
import 'export.dart';

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
        // primarySwatch: Colors.blue,
        /*elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Color(0xFF95622D),
              foregroundColor: Colors.white),
        ),*/
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      initialRoute: AppRoutes.lastRoute,
      routes: {
        AppRoutes.initialRoute: (context) => const SearchEmptyScreen(),
        AppRoutes.lastRoute:(context) => const SignInScreen(),
        // '/second': (context) => const Welcome2Screen(),

      },
    );

  }
}

