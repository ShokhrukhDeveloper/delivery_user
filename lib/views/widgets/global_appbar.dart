import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({
    Key? key,
    required this.title,
    required this.appbarColor, this.titleColor,
  }) : super(key: key);

  final String title;
  final Color appbarColor;
  final Color? titleColor;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      centerTitle: true,
      backgroundColor: appbarColor,

      title: Text(
        title,
        overflow: TextOverflow.visible,
        style: MyTextStyle.poppinsRegular
            .copyWith(fontSize: 18.sp, color: titleColor??AppColors.c_222222),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
