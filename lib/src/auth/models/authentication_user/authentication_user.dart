import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_user.freezed.dart';
part 'authentication_user.g.dart';

@freezed
class UserAuthentication with _$UserAuthentication {
  const factory UserAuthentication({
    required int? id,
    required String nombres,
    required String apellidos,
    required String nombreUsuario,
    required String passwordHash,
    required String email,
    String? phoneNumber,
    required bool isDelete,
    String? createdAt,
    int? createdBy,
    String? updatedAt,
    String? deletedAt,
    String? deletedBy,
  }) = _UserAuthentication;

  factory UserAuthentication.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationFromJson(json);
}
