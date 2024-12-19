import 'package:flutter/material.dart';

class GridviewBuilderScreen extends StatefulWidget {
  const GridviewBuilderScreen({super.key});

  @override
  State<GridviewBuilderScreen> createState() => _GridviewBuilderScreenState();
}

class _GridviewBuilderScreenState extends State<GridviewBuilderScreen> {
  List<Map<String, dynamic>> listData = [
    {
      'id': 1,
      'title': 'Name1',
      'image':
          'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='
    },
    {
      'id': 2,
      'title': 'Name2',
      'image':
          'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='
    },
    {
      'id': 3,
      'title': 'Name3',
      'image':
          'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='
    },
    {
      'id': 4,
      'title': 'Name4',
      'image':
          'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='
    },
    {
      'id': 5,
      'title': 'Name5',
      'image':
          'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='
    },
    {
      'id': 6,
      'title': 'Name6',
      'image':
          'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: listData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Image.network(listData[index]['image']),
                Text(listData[index]['id'].toString()),
                Text(listData[index]['title']),
              ],
            );
          }),
    );
  }
}
