import 'package:flutter/material.dart';
import 'package:furniture/design/utils/gap.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text("Favorites"),
          titleSpacing: 0,
          // leading: Image.asset('assets/images/back_arrow.png'),
          title: const Text(
            'Favorites',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          //already assign back arrow
          // leading: const ImageIcon(AssetImage('assets/images/back_arrow.png')),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 24),
              child: Divider(
                thickness: 1,
              ),
            );
          },
          // Divider(),
          // Gap.gapH24,
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.gapH13,
                  const Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/image1.png'),
                      ),
                    ],
                  ),
                  Gap.gapW16,
                  const Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: 'Vandor Name',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Eames Plastic Iconic Chair in \nWhite Colour ',
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              'KWD 620',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                        SizedBox(
                          height: 16,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Text(
                                'Add to Cart',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF95622D)),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'Remove',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title, String? text});
  final String title;
  // final String

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      title,
      style: const TextStyle(
          overflow: TextOverflow.ellipsis, fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
    );
  }
}
