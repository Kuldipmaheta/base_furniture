import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';

import '../../../../export.dart';

class CustomProfileItem extends StatelessWidget {
  String title;
  String leading;
  // static const iconPath = 'assets/icons';
  // String iconUrl ="$iconPath/ic_shopping_bag.svg";
  CustomProfileItem({
    super.key,
    required this.title,
    required this.leading,
  });

  // final String trailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
      ),
      child: ListTile(
        leading: SvgPicture.asset(leading),
        title: CustomProdText(title: title),
        trailing: const Icon(
          (Icons.arrow_forward_ios),
          color: AppColors.kGrey200,
        ),
      ),
    );
  }
}

class CustomProdText extends StatelessWidget {
  const CustomProdText({super.key, required this.title});
  final String title;
  // final String

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 16,
      ),
    );
  }
}
