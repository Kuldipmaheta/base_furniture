import 'package:flutter/material.dart';

class MyAppScreen extends StatefulWidget {
  const MyAppScreen({super.key});

  @override
  State<MyAppScreen> createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //new line
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Dog Home',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Foundation',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'For those who can not speak',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: 'Username',
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: 'Password',
                          suffixIcon: Icon(Icons.lock_outline_rounded),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'New User?',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'SIGN IN',
                                style: TextStyle(
                                  letterSpacing: 2.0,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                        // child: Text('SIGN IN',style: TextStyle(fontSize: 16),),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Divider(thickness: 2,indent: 20,endIndent: 20,),
                      const Row(children: [
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          indent: 20,
                          endIndent: 10,
                        )),
                        Text("OR"),
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          indent: 10,
                          endIndent: 20,
                        )),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/2702/2702602.png',
                                  width: 25,
                                  height: 25,
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/5968/5968764.png',
                                    width: 28,
                                    height: 28,
                                  ))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/733/733579.png',
                                    width: 28,
                                    height: 28,
                                  ))),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
