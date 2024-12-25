/*
import 'package:flutter/material.dart';

class ViewText extends StatelessWidget {
  const ViewText({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('View More / View Less Example'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: ExpandableTextWidget(),
        ),
      ),
    );
  }
}

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({super.key});

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool isExpanded = false;

  final String longText = "As a Flutter developer, crafting dynamic UIs is both fun and rewarding. "
      "This example demonstrates how you can toggle text visibility in your app. "
      "Click 'View More' to see the full content or 'View Less' to minimize.";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isExpanded ? longText : '${longText.substring(0, 50)}...',
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'View Less' : 'View More',
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
*/
