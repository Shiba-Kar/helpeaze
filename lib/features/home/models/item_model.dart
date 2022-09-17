import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_model.freezed.dart';

@freezed
abstract class Item with _$Item {
  const factory Item({
    required String name,
    required String image,
  }) = _Item;
}
