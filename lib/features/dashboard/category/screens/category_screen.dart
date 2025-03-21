import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:furniture/features/dashboard/category/controllers/category_data_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../products/models/product_model.dart';

class CategoryScreen extends StatefulWidget {
  final ProductList? model;
  const CategoryScreen({super.key, this.model});
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late CategoryDataProvider provider;
  @override
  void initState() {
    provider = Provider.of<CategoryDataProvider>(context, listen: false);
    provider.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            AppLabels.category,
            style: CustomUiText.semiSize16,
          ),
        ),
        actions: [const CustomSvg(imgUrl: AppIcons.icSearch), Gap.gapW24],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Consumer<CategoryDataProvider>(
          builder: (context, snapshot, _) {
            return snapshot.categoryModel == null
                ? const CircularProgressIndicator()
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: provider.categoryModel?.data?.categoryList?.length ?? 0,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: .8,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 5,
                    ),
                    itemBuilder: (context, index) {
                      // final provider = Provider.of<CategoryDataProvider>(context, listen: false);
                      return Column(
                        children: [
                          Gap.gapH16,
                          GestureDetector(
                            onTap: () {
                              var id = provider.categoryModel!.data!.categoryList!.elementAt(index).categoryId;
                              print("category... id::: ${id}");
                              Get.toNamed(AppRoutes.productListScreen, arguments: id);
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductListScreen()));
                            },
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: AppColors.kGrey100,
                              child: Image.network(
                                provider.categoryModel!.data!.categoryList!.elementAt(index).categoryImage.toString(),
                                fit: BoxFit.cover,
                                height: 55,
                              ),
                            ),
                          ),
                          Gap.gapH8,
                          Expanded(
                            child: CustomText(
                              textAlign: TextAlign.center,
                              text:
                                  provider.categoryModel!.data!.categoryList!.elementAt(index).categoryName.toString(),
                              style:
                                  context.titleMedium.copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      );
                    });
          },
        ),
      ),
    );
  }
}
