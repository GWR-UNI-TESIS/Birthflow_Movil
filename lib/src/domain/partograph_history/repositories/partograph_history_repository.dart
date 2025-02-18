import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';

abstract class PartographHistoryRepository {
  Future<List<PartographVersion>> get({required String partographId});
}
