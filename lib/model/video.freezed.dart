// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Video {
  String get category => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get kissRequired => throw _privateConstructorUsedError;
  Uri get rawStorageUrl => throw _privateConstructorUsedError;
  Uri? get scoredStorageUrl => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get singleComments => throw _privateConstructorUsedError;
  int? get templature => throw _privateConstructorUsedError;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {String category,
      DateTime date,
      String email,
      bool kissRequired,
      Uri rawStorageUrl,
      Uri? scoredStorageUrl,
      int? score,
      String? singleComments,
      int? templature});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? date = null,
    Object? email = null,
    Object? kissRequired = null,
    Object? rawStorageUrl = null,
    Object? scoredStorageUrl = freezed,
    Object? score = freezed,
    Object? singleComments = freezed,
    Object? templature = freezed,
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
      kissRequired: null == kissRequired
          ? _value.kissRequired
          : kissRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      rawStorageUrl: null == rawStorageUrl
          ? _value.rawStorageUrl
          : rawStorageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      scoredStorageUrl: freezed == scoredStorageUrl
          ? _value.scoredStorageUrl
          : scoredStorageUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      singleComments: freezed == singleComments
          ? _value.singleComments
          : singleComments // ignore: cast_nullable_to_non_nullable
              as String?,
      templature: freezed == templature
          ? _value.templature
          : templature // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      DateTime date,
      String email,
      bool kissRequired,
      Uri rawStorageUrl,
      Uri? scoredStorageUrl,
      int? score,
      String? singleComments,
      int? templature});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? date = null,
    Object? email = null,
    Object? kissRequired = null,
    Object? rawStorageUrl = null,
    Object? scoredStorageUrl = freezed,
    Object? score = freezed,
    Object? singleComments = freezed,
    Object? templature = freezed,
  }) {
    return _then(_$VideoImpl(
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
      kissRequired: null == kissRequired
          ? _value.kissRequired
          : kissRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      rawStorageUrl: null == rawStorageUrl
          ? _value.rawStorageUrl
          : rawStorageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      scoredStorageUrl: freezed == scoredStorageUrl
          ? _value.scoredStorageUrl
          : scoredStorageUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      singleComments: freezed == singleComments
          ? _value.singleComments
          : singleComments // ignore: cast_nullable_to_non_nullable
              as String?,
      templature: freezed == templature
          ? _value.templature
          : templature // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$VideoImpl implements _Video {
  _$VideoImpl(
      {required this.category,
      required this.date,
      required this.email,
      required this.kissRequired,
      required this.rawStorageUrl,
      this.scoredStorageUrl,
      this.score,
      this.singleComments,
      this.templature});

  @override
  final String category;
  @override
  final DateTime date;
  @override
  final String email;
  @override
  final bool kissRequired;
  @override
  final Uri rawStorageUrl;
  @override
  final Uri? scoredStorageUrl;
  @override
  final int? score;
  @override
  final String? singleComments;
  @override
  final int? templature;

  @override
  String toString() {
    return 'Video(category: $category, date: $date, email: $email, kissRequired: $kissRequired, rawStorageUrl: $rawStorageUrl, scoredStorageUrl: $scoredStorageUrl, score: $score, singleComments: $singleComments, templature: $templature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.kissRequired, kissRequired) ||
                other.kissRequired == kissRequired) &&
            (identical(other.rawStorageUrl, rawStorageUrl) ||
                other.rawStorageUrl == rawStorageUrl) &&
            (identical(other.scoredStorageUrl, scoredStorageUrl) ||
                other.scoredStorageUrl == scoredStorageUrl) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.singleComments, singleComments) ||
                other.singleComments == singleComments) &&
            (identical(other.templature, templature) ||
                other.templature == templature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      category,
      date,
      email,
      kissRequired,
      rawStorageUrl,
      scoredStorageUrl,
      score,
      singleComments,
      templature);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);
}

abstract class _Video implements Video {
  factory _Video(
      {required final String category,
      required final DateTime date,
      required final String email,
      required final bool kissRequired,
      required final Uri rawStorageUrl,
      final Uri? scoredStorageUrl,
      final int? score,
      final String? singleComments,
      final int? templature}) = _$VideoImpl;

  @override
  String get category;
  @override
  DateTime get date;
  @override
  String get email;
  @override
  bool get kissRequired;
  @override
  Uri get rawStorageUrl;
  @override
  Uri? get scoredStorageUrl;
  @override
  int? get score;
  @override
  String? get singleComments;
  @override
  int? get templature;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
