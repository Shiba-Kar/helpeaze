import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helpeaze/providers/theme_provider.dart';
import 'core/core.dart';
import 'features/features.dart';

import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(ProviderScope(observers: [Logger()], child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    final theme = ref.watch(themeProvider);
    return ScreenUtilInit(
      child: const Bridge(),
      builder: (BuildContext context, child) {
        return MaterialApp(
          title: 'Help Eaze',
          theme: FlexThemeData.light(
            scheme: FlexScheme.red,
            fontFamily: 'Lato',
            appBarElevation: 0.5,
          ),
          darkTheme: FlexThemeData.dark(
            scheme: FlexScheme.outerSpace,
            fontFamily: 'Lato',
            appBarElevation: 2,
          ),
          home: child,
          themeMode: theme,
        );
      },
    );
  }
}

class Bridge extends StatelessWidget {
  const Bridge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
