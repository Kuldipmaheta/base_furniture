import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:furniture/features/dashboard/products/screens/product_list_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLabels.category,
          style: CustomUiText.semiSize16,
        ),
          actions: [const CustomSvg(imgUrl: AppIcons.icSearch), Gap.gapW24],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 7,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .8,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const ProductListScreen()));
                    },
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.kGrey100,
                      child: CustomSvg(imgUrl: AppIcons.icChair),
                    ),
                  ),
                  Gap.gapH8,
                  Text(
                    AppLabels.chair,
                    style: CustomUiText.size16,
                  )
                ],
              );
            }),
      ),
    );
  }
}
