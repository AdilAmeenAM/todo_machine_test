// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoTaskModelImpl _$$TodoTaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoTaskModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$TodoTaskModelImplToJson(_$TodoTaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
