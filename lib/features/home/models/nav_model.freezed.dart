// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nav_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Nav {
  Widget get page => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get pagelabel => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavCopyWith<Nav> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavCopyWith<$Res> {
  factory $NavCopyWith(Nav value, $Res Function(Nav) then) =
      _$NavCopyWithImpl<$Res>;
  $Res call({Widget page, int index, String pagelabel, String label});
}

/// @nodoc
class _$NavCopyWithImpl<$Res> implements $NavCopyWith<$Res> {
  _$NavCopyWithImpl(this._value, this._then);

  final Nav _value;
  // ignore: unused_field
  final $Res Function(Nav) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? index = freezed,
    Object? pagelabel = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pagelabel: pagelabel == freezed
          ? _value.pagelabel
          : pagelabel // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NavCopyWith<$Res> implements $NavCopyWith<$Res> {
  factory _$$_NavCopyWith(_$_Nav value, $Res Function(_$_Nav) then) =
      __$$_NavCopyWithImpl<$Res>;
  @override
  $Res call({Widget page, int index, String pagelabel, String label});
}

/// @nodoc
class __$$_NavCopyWithImpl<$Res> extends _$NavCopyWithImpl<$Res>
    implements _$$_NavCopyWith<$Res> {
  __$$_NavCopyWithImpl(_$_Nav _value, $Res Function(_$_Nav) _then)
      : super(_value, (v) => _then(v as _$_Nav));

  @override
  _$_Nav get _value => super._value as _$_Nav;

  @override
  $Res call({
    Object? page = freezed,
    Object? index = freezed,
    Object? pagelabel = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_Nav(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pagelabel: pagelabel == freezed
          ? _value.pagelabel
          : pagelabel // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Nav implements _Nav {
  const _$_Nav(
      {required this.page,
      required this.index,
      required this.pagelabel,
      required this.label});

  @override
  final Widget page;
  @override
  final int index;
  @override
  final String pagelabel;
  @override
  final String label;

  @override
  String toString() {
    return 'Nav(page: $page, index: $index, pagelabel: $pagelabel, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nav &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.pagelabel, pagelabel) &&
            const DeepCollectionEquality().equals(other.label, label));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(pagelabel),
      const DeepCollectionEquality().hash(label));

  @JsonKey(ignore: true)
  @override
  _$$_NavCopyWith<_$_Nav> get copyWith =>
      __$$_NavCopyWithImpl<_$_Nav>(this, _$identity);
}

abstract class _Nav implements Nav {
  const factory _Nav(
      {required final Widget page,
      required final int index,
      required final String pagelabel,
      required final String label}) = _$_Nav;

  @override
  Widget get page;
  @override
  int get index;
  @override
  String get pagelabel;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_NavCopyWith<_$_Nav> get copyWith => throw _privateConstructorUsedError;
}
