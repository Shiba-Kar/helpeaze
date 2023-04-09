import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:helpeaze/features/auth/views/views.dart';
import 'package:helpeaze/providers/theme_provider.dart';
import 'package:helpeaze/router.dart';
import 'core/core.dart';
import 'features/features.dart';

import 'package:flex_color_scheme/flex_color_scheme.dart';

final _routerDelegate = BeamerDelegate(
  locationBuilder: (routeInfo, __) => RouterLocation(routeInfo),
  initialPath: '/birdge',
);

void main() async {
  await initAll(WidgetsFlutterBinding.ensureInitialized());
  runApp(
    ProviderScope(
      observers: kDebugMode ? [Logger()] : null,
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    final theme = ref.watch(themeProvider);
    return ScreenUtilInit(
      child: const Bridge(),
      builder: (BuildContext context, __) {
        return MaterialApp.router(
          routeInformationParser: BeamerParser(),
          // supportedLocales: FormBuilderLocalizations.delegate.,
          backButtonDispatcher:
              BeamerBackButtonDispatcher(delegate: _routerDelegate),
          localizationsDelegates: const [FormBuilderLocalizations.delegate],
          routerDelegate: _routerDelegate,
          title: 'Help Eaze',
          debugShowCheckedModeBanner: false,
          theme: FlexThemeData.light(
            scheme: FlexScheme.red,
            fontFamily: 'Lato',
            appBarBackground: Theme.of(context).cardColor,
            appBarElevation: 0,
          ),
          darkTheme: FlexThemeData.dark(
            scheme: FlexScheme.outerSpace,
            fontFamily: 'Lato',
            //  appBarBackground: Theme.of(context).cardColor,
            appBarElevation: 0,
          ),
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
    return const LoginView();
  }
}
