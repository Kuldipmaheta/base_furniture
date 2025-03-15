import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/features/dashboard/cart/controllers/cart_controller.dart';
import 'package:furniture/features/dashboard/cart/controllers/remove_cart_controller.dart';
import 'package:furniture/features/dashboard/cart/widget/counter_widget.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  final String? languageId;
  final String? productId;
  final String? attributeId;
  final String? deviceId;

  // final Data? item;
  const CartScreen({super.key, this.languageId, this.productId, this.attributeId, this.deviceId});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  /*int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }*/
  @override
  void initState() {
    CartController.to.getPopularCartList();
    super.initState();
  }

//.. price detail get
  final item = CartController.to.cartResponseModel?.value.data?.priceDetail;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerTheme: const DividerThemeData(color: Colors.transparent)),
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: const CustomAppBar(
          title: AppLabels.cart,
          isTrailingPad: false,
          backWidget: gap0,
        ),
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
              Gap.gapH6,
              const Divider(
                // height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH20,
              Obx(() {
                if (CartController.to.isCartLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                final item = CartController.to.cartResponseModel?.value.data?.priceDetail;

                return Padding(
                  padding: p24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Price Detail (3 items)',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Gap.gapH16,
                      Row(
                        children: [
                          const Text(
                            "Subtotal",
                            style: TextStyle(fontSize: 16, color: AppColors.kGrey200),
                          ),
                          const Spacer(),
                          Text(
                            item?.subTotal.toString() ?? "",
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Gap.gapH16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Discount on MRP',
                            style: TextStyle(fontSize: 16, color: AppColors.kGrey200),
                          ),
                          // Spacer(),
                          Text(
                            " - ${item?.discountOnMrp.toString() ?? ""}",
                            style: const TextStyle(fontSize: 16, color: AppColors.kRed, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Gap.gapH16,
                      Row(
                        children: [
                          const Text(
                            'Shipping Charges',
                            style: TextStyle(fontSize: 16, color: AppColors.kGrey200),
                          ),
                          const Spacer(),
                          Text(
                            item?.shippingCharge.toString() ?? "",
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Gap.gapH16,
                      const Divider(
                        color: AppColors.kGrey100,
                        thickness: 2,
                      ),
                      Gap.gapH16,
                      Row(
                        children: [
                          const Text(
                            'Total Prize',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            item?.totalPrice.toString() ?? "",
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Gap.gapH16,
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
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

  /*priceListing() {
    return Obx(() => Container(
          child: CartController.to.isCartLoading.value
              ? const Center(child: CircularProgressIndicator())
              : CartController.to.cartResponseModel!.value.data == null
                  ? Center(child: Text(CartController.to.cartResponseModel?.value.message ?? "custom data"))
                  : Container(),
        ));
  }*/

  cartProductListing() {
    return Obx(() => Container(
          child: CartController.to.isCartLoading.value
              ? const Center(child: CircularProgressIndicator())
              : CartController.to.cartResponseModel!.value.data == null
                  ? Center(child: Text(CartController.to.cartResponseModel?.value.message ?? "custom data"))
                  : ListView.separated(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      // scrollDirection: Axis.vertical,
                      itemCount: CartController.to.cartResponseModel?.value.data?.productList?.length ?? 0,
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
                                  ),
                                ],
                              ),
                              Gap.gapW16,
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: item.vendorName,
                                      style: context.titleSmall
                                          .copyWith(color: AppColors.kGrey200, fontWeight: FontWeight.w400),
                                      // color: AppColors.kGrey200,
                                    ),
                                    Gap.gapH6,
                                    CustomText(
                                      maxLines: 2,
                                      text: item.productName ?? "",
                                      style: context.titleSmall
                                          .copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                                      // color: AppColors.kGrey200,
                                    ),
                                    Gap.gapH12,
                                    Row(
                                      children: [
                                        CustomText(
                                          text: (item.originalPrice ?? "").toString(),
                                          style: context.titleMedium
                                              .copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w600),
                                          // color: AppColors.kGrey200,
                                        ),
                                        Gap.gapW10,
                                        CustomText(
                                          text: item.discountedPrice.toString(),
                                          style: context.titleMedium.copyWith(
                                              color: AppColors.kGrey200,
                                              fontWeight: FontWeight.w300,
                                              decoration: TextDecoration.lineThrough,
                                              decorationColor: AppColors.kGrey200),
                                          // color: AppColors.kGrey200,
                                        ),
                                      ],
                                    ),
                                    Gap.gapH12,
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CounterWidget(
                                          onDecrement: () {},
                                          onIncrement: () {},
                                          quantity: item.addedQty ?? 0,
                                        ),
                                        /* InkWell(
                                          onTap: () {
                                            _decrementCounter();
                                          },
                                          child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              )
                                               IconButton(
                                                onPressed: () {

                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                )),
                                              ),
                                        ),
                                        Gap.gapW16,
                                        Text("$_counter"),
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
                                        ),*/
                                        GestureDetector(
                                            onTap: () {
                                              //alert dialog show from remove cart
                                              /*showDialog(
                                        context: context,
                                        builder: (context) =>
                                            AlertDialog(
                                              title: const Text('Are you want this remove item'),
                                              content: const Text('Item remove this Cart'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () => Navigator.pop(context, index),
                                                  child: const Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () => Navigator.pop(context, index),
                                                  child: const Text('OK'),
                                                ),
                                              ],
                                            ));*/
                                              print("remove product id... ${item}");
                                              RemoveCartController.to.removeFromCart(
                                                  item.id.toString(), "languageId", "attributeId", "deviceId");
                                            },
                                            child: CustomText(
                                              text: AppLabels.remove,
                                              style: context.titleMedium.copyWith(
                                                  color: AppColors.kBlack400,
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration.underline,
                                                  decorationColor: AppColors.kBlack400),
                                            )),
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

/*class CustomText extends StatelessWidget {
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
}*/

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
