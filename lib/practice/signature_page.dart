import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class SignaturePage extends StatefulWidget {
  const SignaturePage({super.key});

  @override
  State<SignaturePage> createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  // SignatureController controller;
  SignatureController controller = SignatureController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = SignatureController(penColor: Colors.white, penStrokeWidth: 3);
    // penColor: Colors.white,
    // penStrokeWidth: 5,
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Signature(
              height: MediaQuery.of(context).size.height / 1.2,
              controller: controller,
              backgroundColor: Colors.black,
            ),
            buildButtons(context),
          ],
        ),
      ),
    );
  }
}

Widget buildButtons(BuildContext context) => Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCheck(context),
          buildClear(),
        ],
      ),
    );

Widget buildCheck(BuildContext context) => IconButton(
      iconSize: 36,
      icon: const Icon(Icons.check, color: Colors.green),
      onPressed: () {},
    );
Widget buildClear() => IconButton(
    iconSize: 36,
    icon: const Icon(Icons.clear, color: Colors.red),
    onPressed: () {
      // controller.clear();
    });
