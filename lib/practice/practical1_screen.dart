import 'package:flutter/material.dart';

class Practical1Screen extends StatelessWidget {
  const Practical1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(

        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              // obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "Email id",
                  hintText: "enter mail",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              // obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // errorBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  labelText: "Password",
                  hintText: "enter password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ElevatedButton(onPressed: () {}, child: Text('Submit'))),
          Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ElevatedButton(
                  onPressed: () {
                    final snackbar = SnackBar(
                      content: const Text("Yay! a snackbar!"),
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Text('Show snackbar'))),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter your username"),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
                onTap: () {},
                onDoubleTap: () {},
                onLongPress: () {},
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/733/733579.png',
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                )),
          ),
          InkWell(
            onTap: () {},
            child: Text("submit",style: TextStyle(fontSize: 20),),
          ),
          GestureDetector(
           behavior: HitTestBehavior.opaque,
              onTap: () {},
              child: Text('Submit',style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}
