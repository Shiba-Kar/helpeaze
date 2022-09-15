import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:riverpod/riverpod.dart';

import '../models/models.dart';

class ButtomNavigationProvider extends StateNotifier<int> {
  final Ref ref;
  final items = const [
    BottomNavigationBarItem(icon: Icon(FontAwesome.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(FontAwesome.search), label: 'Search'),
    BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Share'),
    BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Cummunity'),
    BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Connections'),
  ];
  ButtomNavigationProvider(this.ref) : super(0);
  onTap(int index) => state = index;
}

final buttomNavigationProvider =
    StateNotifierProvider<ButtomNavigationProvider, int>(
        (ref) => ButtomNavigationProvider(ref));
