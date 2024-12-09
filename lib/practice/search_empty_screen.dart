import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';

class SearchEmptyScreen extends StatefulWidget {
  const SearchEmptyScreen({super.key});

  @override
  State<SearchEmptyScreen> createState() => _SearchEmptyScreenState();
}

class _SearchEmptyScreenState extends State<SearchEmptyScreen> {

  List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
    'Chair',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew',
    'Kiwi',
    'Lemon',
  ];
  List<String> searchResults = [];

  /*void onQueryChanged(String query) {
    setState(() {
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }*/
  bool search = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(

          ),
        ),
        leading: GestureDetector(
          onTap: () {
            search = true;
          },
          child: ImageIcon(
              AssetImage('assets/images/back_arrow.png')),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: SizedBox(
              height: 250,
              width: 250,
              child: Image.asset(
                'assets/images/search.png',
              ),
            )),
            Gap.gapH30,
            Text(
              "Search here",
              style: CustomUiText.size28,
            ),
            Gap.gapH8,
            Text(AppLabels.findSearchMsg, style: CustomUiText.size16),
            // Center(child: SvgPicture.asset('assets/images/search.svg',height: 100,width: 100,))
          ],
        ),
      ),
    );
  }
}

