import 'package:flutter/material.dart';
import 'package:furniture/core/services/shared_prefernce_services.dart';
import 'package:furniture/features/dashboard/dashboard_screen.dart';
import 'package:furniture/features/welcome/screens/get_started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = true;

  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.cover,
              ),
            ),
            const Center(
                child: Text(
              'Athathi',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white),
            ))
          ],
        ),
      ),
    );
  }

  Future<void> navigate() async {
    bool value = await getBool();
    debugPrint("SSS $value");
    Future.delayed(const Duration(seconds: 4), () {
      // Get.ofAllNamed(AppRoutes.splashScreen);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => value ? const GetStartedScreen() : const DashboardScreen()));
    });
  }
}
