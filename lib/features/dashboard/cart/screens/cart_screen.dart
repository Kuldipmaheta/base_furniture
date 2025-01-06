import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/export.dart';
import 'package:furniture/features/dashboard/cart/controllers/cart_controller.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    CartController.to;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerTheme: const DividerThemeData(color: Colors.transparent)),
      child: Scaffold(
        // extendBody: true,
        backgroundColor: AppColors.kWhiteColor,
        appBar: const CustomAppBar(
          title: AppLabels.cart,
          isTrailingPad: false,
          backWidget: gap0,
        ),
        /*AppBar(
          backgroundColor: AppColors.kWhiteColor,
          forceMaterialTransparency: true,
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              "Cart",
              style: CustomUiText.semiSize16,
            ),
          ),
        ),*/
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cartProductListing(),
              /*ListView.separated(
                padding: const EdgeInsets.only(top: 16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                itemCount: popularFurnitureList.length,
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20),
                    child: Divider(
                      // height: 4,
                      color: AppColors.kGrey100,
                      thickness: 2,
                    ),
                  );
                },
                itemBuilder: (context, index) {
                  Furniture item = popularFurnitureList[index];
                  return Padding(
                    padding: p24,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            //..container border radius
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              child: Image.network(
                                item.productImage,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width / 3,
                                height: MediaQuery.of(context).size.width / 3,
                              ),

                            ),
                          ],
                        ),
                        Gap.gapW16,
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: item.vendorName,
                                color: AppColors.kGrey200,
                              ),
                              Gap.gapH6,
                              Text(
                                item.productName,
                                maxLines: 2,
                              ),
                              Gap.gapH8,
                              Row(
                                children: [
                                  Text(
                                    item.originalPrice.toString(),
                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                  ),
                                  Gap.gapW10,
                                  Text(
                                    item.discountedPrice.toString(),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: Colors.grey),
                                  ),
                                ],
                              ),
                              Gap.gapH16,
                              Row(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Gap.gapW16,
                                  const Text('1'),
                                  Gap.gapW16,
                                  Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    'Remove',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),*/
              /*Gap.gapH20,
              const Divider(
                // height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH20,
              Padding(
                padding: p24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Price Detail (2 items)',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Gap.gapH16,
                    const Row(
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(fontSize: 16, color: AppColors.kGrey200),
                        ),
                        Spacer(),
                        Text(
                          'KWD 1,899',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Gap.gapH16,
                    const Row(
                      children: [
                        Text(
                          'Discount on MRP',
                          style: TextStyle(fontSize: 16, color: AppColors.kGrey200),
                        ),
                        Spacer(),
                        Text(
                          '-KWD 100',
                          style: TextStyle(fontSize: 16, color: AppColors.kRed, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Gap.gapH16,
                    const Row(
                      children: [
                        Text(
                          'Discount on MRP',
                          style: TextStyle(fontSize: 16, color: AppColors.kGrey200),
                        ),
                        Spacer(),
                        Text(
                          'KWD 1,899',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Gap.gapH16,
                    const Divider(
                      color: AppColors.kGrey100,
                      thickness: 2,
                    ),
                    Gap.gapH16,
                    const Row(
                      children: [
                        Text(
                          'Total Prize',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          'KWD 1,899',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Gap.gapH16,
                  ],
                ),
              ),*/
            ],
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24,
              bottom: 16,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 52,
              child: const CustomElevateBtn(),
            ),
          ),
        ],
      ),
    );
  }

  cartProductListing() {
    return Obx(() => Container(
          child: CartController.to.isCartLoading.value
              ? const CircularProgressIndicator()
              : CartController.to.cartResponseModel!.value.data == null
                  ? Center(child: Text(CartController.to.cartResponseModel?.value.message ?? "custom data"))
                  : ListView.separated(
                      padding: const EdgeInsets.only(top: 16),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      // scrollDirection: Axis.vertical,
                      itemCount: CartController.to.cartResponseModel!.value.data?.productList?.length ?? 0,
                      separatorBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20),
                          child: Divider(
                            // height: 4,
                            color: AppColors.kGrey100,
                            thickness: 2,
                          ),
                        );
                      },
                      itemBuilder: (context, index) {
                        // Furniture item = popularFurnitureList[index];
                        final item = CartController.to.cartResponseModel!.value.data!.productList![index];

                        return Padding(
                          padding: p24,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  //..container border radius
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    child: Image.network(
                                      item.productImage ?? "",
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width / 3,
                                      height: MediaQuery.of(context).size.width / 3,
                                    ),
                                    /*decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      item.productImage,
                                    ),
                                    fit: BoxFit.cover,
                                  )
                              ),*/
                                  ),
                                ],
                              ),
                              Gap.gapW16,
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      title: item.vendorName,
                                      color: AppColors.kGrey200,
                                    ),
                                    Gap.gapH6,
                                    Text(
                                      item.productName ?? "",
                                      maxLines: 2,
                                    ),
                                    Gap.gapH8,
                                    Row(
                                      children: [
                                        Text(
                                          item.originalPrice.toString(),
                                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                        ),
                                        Gap.gapW10,
                                        Text(
                                          item.discountedPrice.toString(),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              decoration: TextDecoration.lineThrough,
                                              decorationColor: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Gap.gapH16,
                                    Row(
                                      children: [
                                        Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                                          child: const Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Gap.gapW16,
                                        const Text('1'),
                                        Gap.gapW16,
                                        Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          'Remove',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
        ));
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.color,
    this.style,
    this.maxLines,
  });
  final String? title;
  final Color? color;
  final TextStyle? style;
  final int? maxLines;
  // final String

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines ?? 1,
      title ?? "",
      style: TextStyle(
        color: color ?? AppColors.kBlack400,
        overflow: TextOverflow.ellipsis,
        fontSize: 16,
      ),
    );
  }
}

class CustomElevateBtn extends StatelessWidget {
  const CustomElevateBtn({
    super.key,
  });
  // final String? title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kPrimaryColor,
        textStyle: CustomUiText.size16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        foregroundColor: AppColors.kWhiteColor,
      ),
      child: const Text("Proceed to Checkout"),
    );
  }
}
