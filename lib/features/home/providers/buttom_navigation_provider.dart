import 'package:riverpod/riverpod.dart';

import '../models/models.dart';
import '../pages/pages.dart';

class ButtomNavigationProvider extends StateNotifier<Nav> {
  final Ref ref;
  final List<Map<String, dynamic>> pages = const [
    {"widget": HomePage(), "label": "Home"},
    {"widget": MembershipPage(), "label": "Membership"},
    {"widget": WecarePage(), "label": "We care"},
    {"widget": MorePage(), "label": "More"},
  ];
  ButtomNavigationProvider(this.ref)
      : super(const Nav(index: 0, page: HomePage(), label: "Home"));
  onTap(int index) => state = Nav(
      page: pages[index]['widget'], index: index, label: pages[index]['label']);
}

final buttomNavigationProvider =
    StateNotifierProvider<ButtomNavigationProvider, Nav>(
        (ref) => ButtomNavigationProvider(ref));
