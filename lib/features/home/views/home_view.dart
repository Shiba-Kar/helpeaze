import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../auth/widgets/widgets.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final buttomNav = ref.watch(buttomNavigationProvider);
    final buttomNavP = ref.read(buttomNavigationProvider.notifier);
    const itemsList = [
      BottomNavigationBarItem(icon: Icon(FontAwesome.home), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(FontAwesome.id_card), label: 'Membership'),
      BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'We care'),
      BottomNavigationBarItem(icon: Icon(Icons.boy_rounded), label: 'More'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        toolbarHeight: 100.h,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        bottom: ButtomBar(title: buttomNav.pagelabel),
        actions: [
          IconButton(
              onPressed: null,
              icon: SizedBox(
                height: 20.w,
                width: 20.w,
                child: Image.asset('assets/icons/notifications.png'),
              ))
        ],
        centerTitle: true,
        title: Container(
            height: 150.w,
            width: 150.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/logo-01.png'),
              ),
            )),
      ),
      drawer: const AppDrawer(),
      bottomNavigationBar: SnakeNavigationBar.color(
        currentIndex: buttomNav.index,
        onTap: buttomNavP.onTap,
        selectedLabelStyle: TextStyle(fontSize: 10.w),
        //  snakeViewGradient: gradient,
        //unselectedItemGradient: gradient,
        snakeShape: SnakeShape.indicator,
        showSelectedLabels: true,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        items: itemsList,
      ),
      body: buttomNav.page,
    );
  }
}
