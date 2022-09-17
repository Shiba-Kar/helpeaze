import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/widgets.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("accountName"),
            accountEmail: Text("accountEmail"),
          ),
          ListTile(
            leading: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/icons/file.png')),
              ),
            ),
            title: const Text("About Us"),
          ),
          ListTile(
            leading: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/icons/file.png')),
              ),
            ),
            title: const Text("Contact Us"),
          ),
          ListTile(
            leading: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/icons/file.png')),
              ),
            ),
            title: const Text("Privacy Policy"),
          ),
          ListTile(
            leading: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/icons/file.png')),
              ),
            ),
            title: const Text("Disclamer"),
          ),
          ListTile(
            leading: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/icons/file.png')),
              ),
            ),
            title: const Text("Terms of Use"),
          ),
          ListTile(
            leading: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/icons/file.png')),
              ),
            ),
            title: const Text("Feedback"),
          ),
          const Spacer(),
          const Divider(),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              children: const [
                Text("v1.0.0"),
                Spacer(),
                ThemeSwitch(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
