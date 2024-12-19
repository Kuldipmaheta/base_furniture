import 'package:flutter/material.dart';
import 'package:furniture/core/services/shared_prefernce_services.dart';
import 'package:furniture/features/dashboard/home/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Image.asset('assets/images/welcome_img.png'),
              ),
              ElevatedButton(
                  onPressed: () {
                    saveBool(value: false);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  child: const Text("Continue"))
            ],
          ),
        ),
      ),
    );
  }
}
