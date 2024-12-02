import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDilogbox extends StatefulWidget {
  const CupertinoDilogbox({super.key});

  @override
  State<CupertinoDilogbox> createState() => _CupertinoDilogboxState();
}

class _CupertinoDilogboxState extends State<CupertinoDilogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
              onPressed: () {
                showCupertinoDialog(
                    context: context, builder: (context) => CupertinoAlertDialog(
                  title: Text('Alert'),
                  content: Text('Proceed with destructive action?'),
                  actions: <CupertinoDialogAction>[
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('No'),
                    ),
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Yes'),
                    ),

                  ],
                ));
              },
              child: Center(child: Text('IOS'))),

        ],
      ),
    );
  }
}
