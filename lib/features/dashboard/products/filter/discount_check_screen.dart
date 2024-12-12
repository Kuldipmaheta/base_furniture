import 'package:flutter/material.dart';

class DiscountCheckScreen extends StatefulWidget {
  const DiscountCheckScreen({super.key});

  @override
  State<DiscountCheckScreen> createState() => _DiscountCheckScreenState();
}

class _DiscountCheckScreenState extends State<DiscountCheckScreen> {
  int selectedValue = 0;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('data'),
              leading: Radio<int>(
                  value: index,
                  groupValue: selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  }),
            );
          }),
    );
  }
}
