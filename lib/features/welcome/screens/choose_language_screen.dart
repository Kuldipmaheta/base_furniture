import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/export.dart';
import 'package:get/get.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  int? selectedValue;
  @override
  Widget build(BuildContext context) {
    // String lang = "English";
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        // width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.imgChooseLanguage), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Choose Language",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              // CustomText(title: AppLabels.chooseLanguage),
              Gap.gapH16,
              Container(
                padding: const EdgeInsets.all(20),
                // alignment: Alignment.bottomLeft,
                // height: 200,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              // color: Colors.red,
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration:
                                    BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all()),
                                child: Row(
                                  children: [
                                    Radio(
                                        visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            vertical: VisualDensity.minimumDensity),
                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        activeColor: AppColors.kPrimaryColor,
                                        value: index,
                                        groupValue: selectedValue,
                                        onChanged: (int? value) {
                                          setState(() {
                                            selectedValue = value!;
                                          });
                                        }),
                                    Gap.gapW12,
                                    Text(
                                      AppLabels.english,
                                      style: CustomUiText.size16,
                                    )
                                  ],
                                ),
                                /*ListTile(
                                  onTap: () {},
                                  tileColor: Colors.red,
                                  selectedTileColor: Colors.yellow,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.blue, width: 2), borderRadius: BorderRadius.circular(10)),
                                  title: Text("English"),
                                ),*/
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Gap.gapH10,
                    SizedBox(width: MediaQuery.of(context).size.width, height: 52, child: const CustomElevateBtn()),
                    // ElevatedButton(onPressed: () {}, child: Text("data"))
                  ],
                ),
                // height: MediaQuery.of(context).size.height / 3.3,
                // width: 400,
              ),
              // Container()
            ],
          ),
        ),
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
      child: const Text("Continue"),
    );
  }
}
