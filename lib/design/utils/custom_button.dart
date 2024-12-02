import 'package:flutter/material.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';

import 'colors_sources.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onpress,
  });
  VoidCallback? onpress;
  // Color hexColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      width: 382,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Continue as Guest"),
        style: ElevatedButton.styleFrom(
          textStyle: CustomUiText.size16,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: ColorsSources.primaryColor),
              borderRadius: BorderRadius.circular(10)),
          foregroundColor: ColorsSources.primaryColor,
        ),
      ),
    );
  }
}

class CustomDarkButton extends StatelessWidget {
  VoidCallback? onpress;
  CustomDarkButton({super.key, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      width: 382,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Continue"),
        style: ElevatedButton.styleFrom(
          textStyle: CustomUiText.size16,
          backgroundColor: ColorsSources.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      // width: MediaQuery.of(context).size.width,
      // width: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0,right: 24),
        child: CarouselView(
          itemExtent: 400,
          // shrinkExtent: 200,
          itemSnapping: true,
          // backgroundColor: Colors.red,
          scrollDirection: Axis.horizontal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          children: [
            Image.network(
              width: MediaQuery.of(context).size.width,
                'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08=',fit: BoxFit.cover,),
            Image.network(
              width: MediaQuery.of(context).size.width,
                'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08=',fit: BoxFit.cover),
            Image.network(
              width: MediaQuery.of(context).size.width,
                'https://media.istockphoto.com/id/593331954/photo/orange-luxury-sport-car-lamborghini-aventador.jpg?s=612x612&w=0&k=20&c=YZmILGk1mxLrB8U0HubIHsAOllc7Hh0yGNzWWAkQO08=',fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}

class CustomProducts extends StatelessWidget {
  const CustomProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Gap.gapW20;
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 200,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade300),
                child: const ImageIcon(
                    AssetImage(
                      'assets/images/ic_sofa.png',
                    ),
                    size: 26,
                  ),
              ),
              Gap.gapH8,
              const Text('Sofa'),
            ],
          );
        },
      ),
    );
  }
}
class CustomMobileTextField extends StatelessWidget {
  const CustomMobileTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: const EdgeInsets.only(left: 24, right: 24),
      height: 44,
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Enter Mobile Number',

          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey)
          ),
        ),

        onChanged: (value) {},
      ),
    );
  }
}

