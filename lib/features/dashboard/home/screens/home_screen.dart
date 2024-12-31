import 'dart:async';

import 'package:furniture/export.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageController.page == imagePath.length - 1) {
        pageController.animateToPage(0, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
      } else {
        pageController.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void initState() {
    pages = List.generate(
        imagePath.length,
        (index) => ImagePlace(
              imagePath: imagePath[index],
            ));
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  final List<String> imagePath = [
    "assets/images/banner_img1.jpg",
    "assets/images/banner_img1.jpg",
    "assets/images/banner_img1.jpg",
  ];
  List<Widget>? pages;
  int activePage = 0;
  Timer? timer;
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteColor,
        forceMaterialTransparency: true,
        // surfaceTintColor: Colors.transparent,
        actions: [
          const CustomSvg(imgUrl: AppIcons.icSearch),
          // SvgPicture.asset(AppIcons.icSearch),
          Gap.gapW16,
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.favoriteScreen);
            },
            // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoritesScreen())),
            child: const CustomSvg(imgUrl: AppIcons.icWish),
          ),
          Gap.gapW16,
          SvgPicture.asset(
            AppIcons.icNotification,
          ),
          Gap.gapW24
          // Icon(Icons.notifications_none),
        ],
        titleSpacing: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'Athathi',
            style: TextStyle(color: AppColors.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.gapH16,
              Padding(
                  padding: p24,
                  child: SizedBox(
                    height: 158,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: imagePath.length,
                        onPageChanged: (value) {
                          setState(() {
                            activePage = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          return pages?[index];
                        }),
                  )),
              Gap.gapH14,
              Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      pages?.length ?? 0,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3.0),
                            child: GestureDetector(
                              onTap: () {
                                pageController.animateToPage(index,
                                    duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                              },
                              child: CircleAvatar(
                                backgroundColor: activePage == index ? AppColors.kPrimaryColor : AppColors.kGrey100,
                                radius: 4,
                              ),
                            ),
                          )),
                ),
              ),
              Gap.gapH16,
              Padding(
                padding: p24,
                child: Row(
                  children: [
                    const Text(
                      AppLabels.getCategories,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.productListScreen);
                      },
                      child: const Text(
                        AppLabels.getViewAll,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.gapH16,
              const CustomProducts(),
              Gap.gapH16,
              Padding(
                padding: p24,
                child: Row(
                  children: [
                    const Text(
                      'Popular Furniture',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.productListScreen);
                        },
                        child: const Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kPrimaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.gapH16,
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: popularFurnitureList.length,
                  itemBuilder: (context, index) {
                    // Furniture item = popularFurnitureList[index];
                    return const Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.0, right: 10),
                              child: ProductListWidget(),
                            ),
                          ),
                          // Gap.gapW20,
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 24),
                              child: ProductListWidget(),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePlace extends StatelessWidget {
  final String? imagePath;
  const ImagePlace({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(imagePath!), fit: BoxFit.cover)),
      /* child: Image.asset(
        imagePath!,
        fit: BoxFit.cover,
        // radius: BorderRadius.circular(16),
      ),*/
    );
  }
}
