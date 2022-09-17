import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'nav_model.freezed.dart';

@freezed
abstract class Nav with _$Nav {
  const factory Nav({
    required Widget page,
    required int index,
    required String label,
  }) = _Nav;
}
