import 'package:furniture/design/utils/custom_text.dart';

import '../../../core/constant/app_colors.dart';
import '../../../design/utils/gap.dart';
import '../../../export.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerTheme: const DividerThemeData(color: Colors.transparent)),
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height / 2.3,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: AppColors.kGrey100,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 20, top: 16),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/image3.png'),
                              ),
                            ],
                          ),
                          Gap.gapW16,
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CustomText(
                                  title: 'Vandor Name',
                                ),
                                Gap.gapH6,
                                Text(
                                  'Eames Plastic Iconic Chair in \nWhite Colour ' * 10,
                                  maxLines: 2,
                                ),
                                Gap.gapH8,
                                Row(
                                  children: [
                                    const Text(
                                      'KWD 620',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    Gap.gapW10,
                                    const Text(
                                      'KWD 677',
                                      style: TextStyle(
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
                                        fontWeight: FontWeight.bold,
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
              ),
              const Divider(
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH16,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Price Detail (2 items)',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 16, color: AppColors.kBlack400, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 16, color: AppColors.kRed, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 16, color: AppColors.kBlack400, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 16, color: AppColors.kBlack400, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          'KWD 1,899',
                          style: TextStyle(fontSize: 16, color: AppColors.kBlack400, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Gap.gapH16,
                  ],
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16, bottom: 16),
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
