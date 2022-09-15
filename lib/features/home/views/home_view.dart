import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final buttomNav = ref.watch(buttomNavigationProvider);
    final buttomNavP = ref.watch(buttomNavigationProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      drawer: const AppDrawer(),
      bottomNavigationBar: SnakeNavigationBar.gradient(
        currentIndex: buttomNav,
        onTap: buttomNavP.onTap,
        //  snakeViewGradient: gradient,
        //unselectedItemGradient: gradient,
        snakeShape: SnakeShape.indicator,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        items: buttomNavP.items,
      ),
    );
  }
}
