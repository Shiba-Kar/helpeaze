import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          )
        ],
      ),
    );
  }
}
