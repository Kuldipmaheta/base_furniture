import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedSnack = "none selected";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          RadioMenuButton(
              value: 1,
              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  // selectedSnack = selectedValue;
                });
              },
              child: const Text('English')),
        ],
      ),
    );
  }
}
