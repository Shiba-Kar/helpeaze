import 'package:riverpod/riverpod.dart';

import '../models/models.dart';
import '../pages/pages.dart';

class ButtomNavigationProvider extends StateNotifier<Nav> {
  final Ref ref;
  final List<Map<String, dynamic>> pages = const [
    {"widget": HomePage(), "label": "Home", "pagelabel": "Services"},
    {
      "widget": MembershipPage(),
      "label": "Membership",
      "pagelabel": "My Membership"
    },
    {
      "widget": WecarePage(),
      "label": "We care",
      "pagelabel": "Feedback",
    },
    {
      "widget": MorePage(),
      "label": "More",
      "pagelabel": "More",
    },
  ];
  ButtomNavigationProvider(this.ref)
      : super(
          const Nav(
            index: 0,
            page: HomePage(),
            label: "Home",
            pagelabel: "Services",
          ),
        );
  onTap(int index) => state = Nav(
        page: pages[index]['widget'],
        index: index,
        pagelabel: pages[index]["pagelabel"],
        label: pages[index]['label'],
      );
}

final buttomNavigationProvider =
    StateNotifierProvider<ButtomNavigationProvider, Nav>(
        (ref) => ButtomNavigationProvider(ref));
