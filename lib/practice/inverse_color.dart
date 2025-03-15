import 'package:flutter/material.dart';

class InverseColor extends StatefulWidget {
  const InverseColor({super.key});

  @override
  State<InverseColor> createState() => _InverseColorState();
}

class _InverseColorState extends State<InverseColor> {
  int selectIndex = 0;
  final Set<int> selectedIndices = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Checkbox(
              value: selectedIndices.contains(index),
              onChanged: (values) {
                if (values!) {
                  selectedIndices.add(index);
                } else {
                  selectedIndices.remove(index);
                }
              });
        },
      ),
    );
  }
}
