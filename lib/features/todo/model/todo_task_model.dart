import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_task_model.freezed.dart';
part 'todo_task_model.g.dart';

@freezed
class TodoTaskModel with _$TodoTaskModel {
  factory TodoTaskModel(
      {required String id,
      required String title,
      required String subtitle,
      DateTime? createdAt}) = _TodoTaskModel;
  factory TodoTaskModel.fromJson(Map<String, dynamic> json) =>
      _$TodoTaskModelFromJson(json);
}
