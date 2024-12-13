import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_request.freezed.dart';
part 'group_request.g.dart';

@freezed
class GroupRequest with _$GroupRequest {
  const factory GroupRequest({
    required int? id,
    required String groupName,
  }) = _GroupRequest;

  factory GroupRequest.fromJson(Map<String, dynamic> json) =>
      _$GroupRequestFromJson(json);
}
