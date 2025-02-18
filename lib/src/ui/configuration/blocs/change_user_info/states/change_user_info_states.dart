import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_info_states.freezed.dart';

@freezed
class ChangeUserInfoState with _$ChangeUserInfoState {
  const factory ChangeUserInfoState.initial() = Initial;
  const factory ChangeUserInfoState.loading() = Loading;
  const factory ChangeUserInfoState.loaded(User user) = _Loaded;
  const factory ChangeUserInfoState.updated(UserAuthentication auth, String message) = _Updated;
  const factory ChangeUserInfoState.error(String errorMessage) = Error;
}
