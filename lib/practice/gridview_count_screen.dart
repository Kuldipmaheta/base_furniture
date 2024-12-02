import 'package:flutter/material.dart';

class GridviewCountScreen extends StatefulWidget {
  const GridviewCountScreen({super.key});

  @override
  State<GridviewCountScreen> createState() => _GridviewCountScreenState();
}

class _GridviewCountScreenState extends State<GridviewCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        // shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        // physics: AlwaysScrollableScrollPhysics(),
          crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(fit: BoxFit.fitWidth,
              'https://images.unsplash.com/photo-1621615578530-cbf3c443165f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3VwZXIlMjBjYXJ8ZW58MHx8MHx8&w=1000&q=80',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('name: Lamborgini',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text('Price: 2.1 Cr.', style: TextStyle(fontSize: 20)),
              Text('Model- Syan 2', style: TextStyle(fontSize: 20)),
              Text('Rating 3 Star',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(fit: BoxFit.fitWidth,
                'https://images.pexels.com/photos/14708102/pexels-photo-14708102.jpeg?auto=compress&cs=tinysrgb&w=600'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'name: Ferrari',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text('Price: 2.8 Cr.',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                Text('Model- Ferrari X', style: TextStyle(fontSize: 20)),
                Text(
                  'Rating 2 Star',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(fit: BoxFit.fitWidth,
                'https://images.pexels.com/photos/3221163/pexels-photo-3221163.jpeg?auto=compress&cs=tinysrgb&w=600'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'name: Ducati',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text('Price: 1.1 Cr.', style: TextStyle(fontSize: 22)),
                Text('Model- chiron 2', style: TextStyle(fontSize: 22)),
                Text(
                  'Rating 4 Star',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(fit: BoxFit.fitWidth,
                'https://images.pexels.com/photos/10394786/pexels-photo-10394786.jpeg?auto=compress&cs=tinysrgb&w=600'),
          ),
          Text('data'),
          Image.network(fit: BoxFit.fitWidth,
              'https://images.pexels.com/photos/14708102/pexels-photo-14708102.jpeg?auto=compress&cs=tinysrgb&w=600'),
        ],
      ),

    );
  }
}
