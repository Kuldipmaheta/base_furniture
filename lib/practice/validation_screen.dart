import 'package:flutter/material.dart';
import 'package:furniture/design/profile_setup.dart';

class ValidationScreen extends StatefulWidget {
  const ValidationScreen({super.key});

  @override
  State<ValidationScreen> createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  TextEditingController _emailController = TextEditingController();
  bool _validate = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(hintText: 'hintText'),
          ),
          ElevatedButton(
              onPressed: () {
               if(_formKey.currentState!.validate()) {
                 _emailController.text.toString();
                 // _text.text.isEmpty ? _validate = true : _validate = false;
               }




              },
              child: Text("Submit")),
        ],
      ),
    );
  }
}
