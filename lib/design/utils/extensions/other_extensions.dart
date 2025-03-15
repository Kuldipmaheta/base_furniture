import 'package:flutter/material.dart';

extension GestureExt on Widget {
  Widget onTap({Function? onTap}) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      behavior: HitTestBehavior.translucent,
      child: this,
    );
  }

  Widget withColor({Color? color}) {
    return Container(
      color: color ?? Colors.red,
      child: this,
    );
  }

  Widget expanded({int? flex}) {
    return Expanded(
      flex: flex ?? 1,
      child: this,
    );
  }

  Widget flexible({int? flex}) {
    return Flexible(
      child: this,
    );
  }
}
