import 'package:flutter/material.dart';

import '../../ViewModel/size_vm.dart';

// ignore: must_be_immutable
class DrawBarBtn extends StatelessWidget {
  Widget? leading, title, trailing;
  double? titleLeft;
  double width;
  Color color;
  Function? onTap;
  DrawBarBtn(
      {super.key, this.leading,
      this.title,
      this.trailing,
      this.titleLeft,
      this.onTap,
      this.color = Colors.transparent,
      this.width = double.infinity});
  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MySize.width;
    leading = leading ?? Container();
    title = title ?? Container();
    trailing = trailing ?? Container();
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadiusDirectional.circular(sizeWidth * 0.03),
          color: color,
        ),
        width: width,
        padding:const EdgeInsets.all(8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: sizeWidth * 0.17,
            ),
            Positioned(left: 2, child: leading!),
            Positioned(left: titleLeft, child: title!),
            Positioned(right: 2, child: trailing!),
          ],
        ),
      ),
    );
  }
}
