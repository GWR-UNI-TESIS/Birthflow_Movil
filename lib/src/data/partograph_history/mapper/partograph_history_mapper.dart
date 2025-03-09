import 'dart:convert'; // Para usar json.decode
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.auto_mappr.dart';
import 'package:birthflow_movil/src/data/partograph_history/models/partograph_audit_log/partograph_audit_log_response.dart';
import 'package:birthflow_movil/src/data/partograph_history/models/partograph_version/partograph_version_response.dart';
import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_audit_log/partograph_audit_log.dart';
import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';

@AutoMappr([
  MapType<PartographAuditLogResponse, PartographAuditLog>(),
  MapType<PartographVersionResponse, PartographVersion>(
    fields: [
      Field(
        'partographDataJson',
        custom: PartographHistoryMapper.jsonStringToMap,
      ),
    ],
  ),
])
class PartographHistoryMapper extends $PartographHistoryMapper {
  // Convertir String a Map<String, dynamic>
  static Map<String, dynamic> jsonStringToMap(PartographVersionResponse model) {
    try {
      return json.decode(model.partographDataJson) as Map<String, dynamic>;
    } catch (e) {
      return {}; // En caso de error, devolver un Map vacío
    }
  }
}
