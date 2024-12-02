import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.blue,
        currentIndex : currentPageIndex,
          onTap: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          // backgroundColor: Colors.red,
          elevation: 0,
          iconSize: 30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: "Category",),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
