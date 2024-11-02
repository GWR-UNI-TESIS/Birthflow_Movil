import 'package:freezed_annotation/freezed_annotation.dart';

part 'hodge_plane_response.freezed.dart';
part 'hodge_plane_response.g.dart';

@freezed
class HodgePlaneResponse with _$HodgePlaneResponse {
  const factory HodgePlaneResponse({
    required int id,
    required String code,
    required String description,
  }) = _HodgePlaneResponse;

  factory HodgePlaneResponse.fromJson(Map<String, dynamic> json) => _$HodgePlaneResponseFromJson(json);
}
