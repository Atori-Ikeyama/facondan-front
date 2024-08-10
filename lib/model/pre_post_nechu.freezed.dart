// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_post_nechu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrePostNechu {
  String get category => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  XFile get xfile_video => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Create a copy of PrePostNechu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrePostNechuCopyWith<PrePostNechu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrePostNechuCopyWith<$Res> {
  factory $PrePostNechuCopyWith(
          PrePostNechu value, $Res Function(PrePostNechu) then) =
      _$PrePostNechuCopyWithImpl<$Res, PrePostNechu>;
  @useResult
  $Res call(
      {String category,
      DateTime date,
      String email,
      String filePath,
      XFile xfile_video,
      double lat,
      double lng});
}

/// @nodoc
class _$PrePostNechuCopyWithImpl<$Res, $Val extends PrePostNechu>
    implements $PrePostNechuCopyWith<$Res> {
  _$PrePostNechuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrePostNechu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? date = null,
    Object? email = null,
    Object? filePath = null,
    Object? xfile_video = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      xfile_video: null == xfile_video
          ? _value.xfile_video
          : xfile_video // ignore: cast_nullable_to_non_nullable
              as XFile,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrePostNechuImplCopyWith<$Res>
    implements $PrePostNechuCopyWith<$Res> {
  factory _$$PrePostNechuImplCopyWith(
          _$PrePostNechuImpl value, $Res Function(_$PrePostNechuImpl) then) =
      __$$PrePostNechuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      DateTime date,
      String email,
      String filePath,
      XFile xfile_video,
      double lat,
      double lng});
}

/// @nodoc
class __$$PrePostNechuImplCopyWithImpl<$Res>
    extends _$PrePostNechuCopyWithImpl<$Res, _$PrePostNechuImpl>
    implements _$$PrePostNechuImplCopyWith<$Res> {
  __$$PrePostNechuImplCopyWithImpl(
      _$PrePostNechuImpl _value, $Res Function(_$PrePostNechuImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrePostNechu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? date = null,
    Object? email = null,
    Object? filePath = null,
    Object? xfile_video = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$PrePostNechuImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      xfile_video: null == xfile_video
          ? _value.xfile_video
          : xfile_video // ignore: cast_nullable_to_non_nullable
              as XFile,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PrePostNechuImpl implements _PrePostNechu {
  _$PrePostNechuImpl(
      {required this.category,
      required this.date,
      required this.email,
      required this.filePath,
      required this.xfile_video,
      required this.lat,
      required this.lng});

  @override
  final String category;
  @override
  final DateTime date;
  @override
  final String email;
  @override
  final String filePath;
  @override
  final XFile xfile_video;
  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'PrePostNechu(category: $category, date: $date, email: $email, filePath: $filePath, xfile_video: $xfile_video, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrePostNechuImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.xfile_video, xfile_video) ||
                other.xfile_video == xfile_video) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, category, date, email, filePath, xfile_video, lat, lng);

  /// Create a copy of PrePostNechu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrePostNechuImplCopyWith<_$PrePostNechuImpl> get copyWith =>
      __$$PrePostNechuImplCopyWithImpl<_$PrePostNechuImpl>(this, _$identity);
}

abstract class _PrePostNechu implements PrePostNechu {
  factory _PrePostNechu(
      {required final String category,
      required final DateTime date,
      required final String email,
      required final String filePath,
      required final XFile xfile_video,
      required final double lat,
      required final double lng}) = _$PrePostNechuImpl;

  @override
  String get category;
  @override
  DateTime get date;
  @override
  String get email;
  @override
  String get filePath;
  @override
  XFile get xfile_video;
  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of PrePostNechu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrePostNechuImplCopyWith<_$PrePostNechuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
