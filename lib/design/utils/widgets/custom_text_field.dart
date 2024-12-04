import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,required this.hintText});

  TextEditingController nameController= TextEditingController();
  // TextEditingController _emailController = TextEditingController();
  String hintText;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      // margin: const EdgeInsets.only(left: 24, right: 24),
      height: 50,
      // width: MediaQuery.of(context).size.width,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        // maxLines: 1,
        // minLines: 1,
        controller: nameController,
        // key: _formKey,
        validator: (value) => value!.isEmpty? "Please enter name" : null,
        // keyboardType: TextInputType.text,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5),
          // errorText: _validate ? "Value not empty" : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey)),
        ),
        /*onChanged: (value) {

        },*/
      ),
    );
  }
}
