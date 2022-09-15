import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/services.dart';

class ThmemeProvider extends StateNotifier<ThemeMode> {
  final LocalStorageService _storageService = LocalStorageService();
  ThmemeProvider() : super(ThemeMode.system);
  changeTheme() {
    final theme = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    state = theme;
    _storageService.storeTheme(state == ThemeMode.dark);
  }
}

final themeProvider =
    StateNotifierProvider<ThmemeProvider, ThemeMode>((ref) => ThmemeProvider());
