// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_nechu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddNechuState {
  String get category => throw _privateConstructorUsedError;
  XFile? get video => throw _privateConstructorUsedError;
  VideoPlayerController? get videoController =>
      throw _privateConstructorUsedError;
  bool get isUploading => throw _privateConstructorUsedError;
  TextEditingController? get titleController =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddNechuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddNechuStateCopyWith<AddNechuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNechuStateCopyWith<$Res> {
  factory $AddNechuStateCopyWith(
          AddNechuState value, $Res Function(AddNechuState) then) =
      _$AddNechuStateCopyWithImpl<$Res, AddNechuState>;
  @useResult
  $Res call(
      {String category,
      XFile? video,
      VideoPlayerController? videoController,
      bool isUploading,
      TextEditingController? titleController});
}

/// @nodoc
class _$AddNechuStateCopyWithImpl<$Res, $Val extends AddNechuState>
    implements $AddNechuStateCopyWith<$Res> {
  _$AddNechuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddNechuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? video = freezed,
    Object? videoController = freezed,
    Object? isUploading = null,
    Object? titleController = freezed,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as XFile?,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      isUploading: null == isUploading
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      titleController: freezed == titleController
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNechuStateImplCopyWith<$Res>
    implements $AddNechuStateCopyWith<$Res> {
  factory _$$AddNechuStateImplCopyWith(
          _$AddNechuStateImpl value, $Res Function(_$AddNechuStateImpl) then) =
      __$$AddNechuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      XFile? video,
      VideoPlayerController? videoController,
      bool isUploading,
      TextEditingController? titleController});
}

/// @nodoc
class __$$AddNechuStateImplCopyWithImpl<$Res>
    extends _$AddNechuStateCopyWithImpl<$Res, _$AddNechuStateImpl>
    implements _$$AddNechuStateImplCopyWith<$Res> {
  __$$AddNechuStateImplCopyWithImpl(
      _$AddNechuStateImpl _value, $Res Function(_$AddNechuStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddNechuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? video = freezed,
    Object? videoController = freezed,
    Object? isUploading = null,
    Object? titleController = freezed,
  }) {
    return _then(_$AddNechuStateImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as XFile?,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      isUploading: null == isUploading
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      titleController: freezed == titleController
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$AddNechuStateImpl implements _AddNechuState {
  _$AddNechuStateImpl(
      {this.category = "",
      this.video,
      this.videoController,
      this.isUploading = false,
      this.titleController});

  @override
  @JsonKey()
  final String category;
  @override
  final XFile? video;
  @override
  final VideoPlayerController? videoController;
  @override
  @JsonKey()
  final bool isUploading;
  @override
  final TextEditingController? titleController;

  @override
  String toString() {
    return 'AddNechuState(category: $category, video: $video, videoController: $videoController, isUploading: $isUploading, titleController: $titleController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNechuStateImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.videoController, videoController) ||
                other.videoController == videoController) &&
            (identical(other.isUploading, isUploading) ||
                other.isUploading == isUploading) &&
            (identical(other.titleController, titleController) ||
                other.titleController == titleController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, video, videoController,
      isUploading, titleController);

  /// Create a copy of AddNechuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNechuStateImplCopyWith<_$AddNechuStateImpl> get copyWith =>
      __$$AddNechuStateImplCopyWithImpl<_$AddNechuStateImpl>(this, _$identity);
}

abstract class _AddNechuState implements AddNechuState {
  factory _AddNechuState(
      {final String category,
      final XFile? video,
      final VideoPlayerController? videoController,
      final bool isUploading,
      final TextEditingController? titleController}) = _$AddNechuStateImpl;

  @override
  String get category;
  @override
  XFile? get video;
  @override
  VideoPlayerController? get videoController;
  @override
  bool get isUploading;
  @override
  TextEditingController? get titleController;

  /// Create a copy of AddNechuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNechuStateImplCopyWith<_$AddNechuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
