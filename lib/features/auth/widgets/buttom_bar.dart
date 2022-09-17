import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtomBar extends StatelessWidget implements PreferredSizeWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.w),
      title: Text(
        "Registration",
        style: TextStyle(fontSize: 30.sp),
      ),
      subtitle: Text("Please enter the details to enter the app"),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(30.h);
}
