import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../providers/providers.dart';

class ThemeSwitch extends ConsumerWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: 100.w,
      // height: 40.h,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        dense: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.w),
        ),
        tileColor: Theme.of(context).chipTheme.backgroundColor,
        trailing: Icon(
          isDarkMode ? Icons.sunny : Icons.brightness_2,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () => ref.read(themeProvider.notifier).changeTheme(),
        title: Text(isDarkMode ? "Dark" : "Light"),
      ),
    );
  }
}
