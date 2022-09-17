import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:helpeaze/features/auth/auth.dart';
import 'package:helpeaze/main.dart';
import 'features/home/home.dart';

class RouterLocation extends BeamLocation<BeamState> {
  RouterLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<String> get pathPatterns => ['/birdge', '/login', '/home'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    containsKey(String key) => state.uri.pathSegments.contains(key);

    return [
      if (containsKey('login'))
        const BeamPage(
          key: ValueKey('login'),
          title: 'Login',
          type: BeamPageType.noTransition,
          child: LoginView(),
        ),
      if (containsKey('birdge'))
        const BeamPage(
          key: ValueKey('birdge'),
          title: 'Bridge',
          type: BeamPageType.noTransition,
          child: Bridge(),
        ),
      if (containsKey('registration'))
        const BeamPage(
          key: ValueKey('registration'),
          title: 'Registration',
          type: BeamPageType.slideTopTransition,
          child: RegistrationView(),
        ),
      if (containsKey('home'))
        const BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          type: BeamPageType.noTransition,
          child: HomeView(),
        ),
    ];
  }
}
