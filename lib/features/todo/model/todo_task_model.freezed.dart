// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoTaskModel _$TodoTaskModelFromJson(Map<String, dynamic> json) {
  return _TodoTaskModel.fromJson(json);
}

/// @nodoc
mixin _$TodoTaskModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TodoTaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoTaskModelCopyWith<TodoTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoTaskModelCopyWith<$Res> {
  factory $TodoTaskModelCopyWith(
          TodoTaskModel value, $Res Function(TodoTaskModel) then) =
      _$TodoTaskModelCopyWithImpl<$Res, TodoTaskModel>;
  @useResult
  $Res call({String id, String title, String subtitle, DateTime? createdAt});
}

/// @nodoc
class _$TodoTaskModelCopyWithImpl<$Res, $Val extends TodoTaskModel>
    implements $TodoTaskModelCopyWith<$Res> {
  _$TodoTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoTaskModelImplCopyWith<$Res>
    implements $TodoTaskModelCopyWith<$Res> {
  factory _$$TodoTaskModelImplCopyWith(
          _$TodoTaskModelImpl value, $Res Function(_$TodoTaskModelImpl) then) =
      __$$TodoTaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String subtitle, DateTime? createdAt});
}

/// @nodoc
class __$$TodoTaskModelImplCopyWithImpl<$Res>
    extends _$TodoTaskModelCopyWithImpl<$Res, _$TodoTaskModelImpl>
    implements _$$TodoTaskModelImplCopyWith<$Res> {
  __$$TodoTaskModelImplCopyWithImpl(
      _$TodoTaskModelImpl _value, $Res Function(_$TodoTaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$TodoTaskModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoTaskModelImpl implements _TodoTaskModel {
  _$TodoTaskModelImpl(
      {required this.id,
      required this.title,
      required this.subtitle,
      this.createdAt});

  factory _$TodoTaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoTaskModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TodoTaskModel(id: $id, title: $title, subtitle: $subtitle, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoTaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, subtitle, createdAt);

  /// Create a copy of TodoTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoTaskModelImplCopyWith<_$TodoTaskModelImpl> get copyWith =>
      __$$TodoTaskModelImplCopyWithImpl<_$TodoTaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoTaskModelImplToJson(
      this,
    );
  }
}

abstract class _TodoTaskModel implements TodoTaskModel {
  factory _TodoTaskModel(
      {required final String id,
      required final String title,
      required final String subtitle,
      final DateTime? createdAt}) = _$TodoTaskModelImpl;

  factory _TodoTaskModel.fromJson(Map<String, dynamic> json) =
      _$TodoTaskModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  DateTime? get createdAt;

  /// Create a copy of TodoTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoTaskModelImplCopyWith<_$TodoTaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
