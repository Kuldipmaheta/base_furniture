import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Practical2Screen extends StatefulWidget {
  const Practical2Screen({super.key});

  @override
  State<Practical2Screen> createState() => _Practical2ScreenState();
}

class _Practical2ScreenState extends State<Practical2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselView(
            itemExtent: 500,
            // shrinkExtent: 200,
            itemSnapping: true,
            scrollDirection: Axis.horizontal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            children: [
              Image.network(
                  'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='),
              Image.network(
                  'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='),
              Image.network(
                  'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='),
            ],
          ),
        ));
  }
}

class PracticalSlider extends StatefulWidget {
  const PracticalSlider({super.key});

  @override
  State<PracticalSlider> createState() => _PracticalSliderState();
}

class _PracticalSliderState extends State<PracticalSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                /*Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='),
                fit: BoxFit.cover,
              ),
            ),
          ),*/
                /*Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='),
                fit: BoxFit.cover,
              ),
            ),
          ),*/
              ],
              options: CarouselOptions(
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                // autoPlayCurve: Curves.fastOutSlowIn,
                // autoPlay: true,
                aspectRatio: 16 / 9,
                // autoPlayAnimationDuration: Duration(seconds: 3),
              ))
        ],
      ),
    );
  }
}
