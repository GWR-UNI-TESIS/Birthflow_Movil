import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.freezed.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.loading() = Loading;
  const factory UsersState.loaded(List<User> users) = Loaded;
  const factory UsersState.error(String message) = Error;
}
