import 'package:flutter/material.dart';
import 'package:furniture/design/utils/gap.dart';

import 'favorites_screen.dart';

class ProductListing extends StatefulWidget {
  const ProductListing({super.key});

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Chair',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: const ImageIcon(AssetImage('assets/images/back_arrow.png')),
      ),
      body: GridView.builder(
          shrinkWrap: true,
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: .70,
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*Container(
                    width: 200,
                    height: 100,
                    child: Image.network(fit: BoxFit.cover,
                        'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08='
                    ),
                  ),*/
                  Image.asset(
                    'assets/images/image1.png',fit: BoxFit.cover,
                    width: 200,
                  ),
                  Gap.gapH6,
                  const CustomText(title: 'Vendor Name'),
                  Gap.gapH6,
                  const Text(
                    'Eames Plastic Iconic Chair\nin White Colour',
                    maxLines: 2,
                  ),
                  // CustomText(title: 'Eames Plastic Iconic Chair in White Colour'),
                  Gap.gapH10,
                  const Row(
                    children: [
                      Text(
                        'KWD 620',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'KWD 677',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey),
                      ),
                    ],
                  ),



                ],
              ),
            );
          }),
    );
  }
}
