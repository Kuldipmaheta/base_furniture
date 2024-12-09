import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/gap.dart';

import '../../export.dart';

class CustomProfileItem extends StatelessWidget {
   String title;
   String leading;
   // static const iconPath = 'assets/icons';
   // String iconUrl ="$iconPath/ic_shopping_bag.svg";
   CustomProfileItem({super.key, required this.title, required this.leading, });

  // final String trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(leading),
      title: CustomProdText(title : title),
      trailing: Icon((Icons.arrow_forward_ios),color: Colors.grey,),
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


