import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_type_response.freezed.dart';
part 'permission_type_response.g.dart';

@freezed
class PermissionTypeResponse with _$PermissionTypeResponse {
  const factory PermissionTypeResponse({
    required int id,
    required String identificator,
    required String name,
    required String description,
    required DateTime createAt,
  }) = _PermissionTypeResponse;

  factory PermissionTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$PermissionTypeResponseFromJson(json);
}
