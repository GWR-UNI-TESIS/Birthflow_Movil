import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curves_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_request/cervical_dilation_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/contraction_frequency_request/contraction_frequency_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/contraction_frequency_response/contraction_frequency_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/fetal_heart_rate_request/fetal_heart_rate_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/fetal_heart_rate_response/fetal_heart_rate_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_request/medical_surveillance_table_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_response/medical_surveillance_table_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_list_response/partograph_list_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_request/partograph_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_response/partograph_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_request/presentation_position_variety_entity_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_response/presentation_position_variety_entity_response.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/mappers/mapper.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:logger/logger.dart';

class PartographRepositoryImplementation implements PartographRepository {
  final PartographService _partographService;
  final TokenStorage _tokenStorage = TokenStorage();
  final Logger _logger = Logger();
  final Mappr _mapper = Mappr();

  PartographRepositoryImplementation({
    required PartographService partogramaService,
  }) : _partographService = partogramaService;

  @override
  Future<Partograph?> createPartograph({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographRequest(
        // ignore: avoid_redundant_argument_values
        partographId: null,
        name: name,
        recordName: recordName,
        date: date,
        observation: observation,
        workTime: worktime,
      );

      final result = await _partographService.create(token, request);

      if (result.response == null) return null;

      return _mapper.convert<PartographResponse, Partograph>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<void> deletePartograph({required String partographId}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<PartographList>?> getPartographs({required String userId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';
      final result = await _partographService.get(token, userId);

      if (result.response == null) return [];

      return _mapper.convertList<PartographListResponse, PartographList>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return [];
    }
  }

  @override
  Future<Partograph> getPartograph({required String partographId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';
      final result =
          await _partographService.getPartograph(token, partographId);

      return _mapper.convert<PartographResponse, Partograph>(
        result.response,
      );
    } catch (e, stackTrace) {
      // Manejo de errores inesperados durante el proceso de renovación
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);

      rethrow;
    }
  }

  @override
  Future<Partograph?> updatePartograph({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographRequest(
        partographId: partographId,
        name: name,
        recordName: recordName,
        date: date,
        observation: observation,
        workTime: worktime,
      );

      final result = await _partographService.updatePartograph(token, request);

      if (result.response == null) return null;

      return _mapper.convert<PartographResponse, Partograph>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<CervicalDilation?> createCervicalDilation({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = CervicalDilationRequest(
        id: 0,
        partographId: partographId,
        value: value,
        hour: hour,
        remOrRam: remOrRam,
      );

      final result =
          await _partographService.createCervicalDilation(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<CervicalDilationResponse, CervicalDilation>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<CervicalDilation?> deleteCervicalDilation({
    required int id,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = CervicalDilationRequest(
        id: id,
        partographId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        value: 6.0,
        hour: DateTime.now(),
        remOrRam: false,
      );

      final result =
          await _partographService.deleteCervicalDilation(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<CervicalDilationResponse, CervicalDilation>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<List<CervicalDilation>?> getCervicalDilation({
    required String partographId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result =
          await _partographService.getCervicalDilation(token, partographId);

      if (result.response == null) return null;

      return _mapper.convertList<CervicalDilationResponse, CervicalDilation>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<CervicalDilation?> updateCervicalDilation({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = CervicalDilationRequest(
        id: id,
        partographId: partographId,
        value: value,
        hour: hour,
        remOrRam: remOrRam,
      );

      final result =
          await _partographService.updateCervicalDilation(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<CervicalDilationResponse, CervicalDilation>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<MedicalSurveillanceTable?> createMedicalSurveillance({
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = MedicalSurveillanceTableRequest(
        id: 0,
        partographId: partographId,
        maternalPosition: maternalPosition,
        arterialPressure: arterialPressure,
        maternalPulse: maternalPulse,
        fetalHeartRate: fetalHeartRate,
        contractionsDuration: contractionsDuration,
        frequencyContractions: frequencyContractions,
        pain: pain,
        letter: 'a',
        time: time,
      );

      final result = await _partographService.createMedicalSurveillanceTable(
        token,
        request,
      );

      if (result.response == null) return null;

      return _mapper.convert<MedicalSurveillanceTableResponse,
          MedicalSurveillanceTable>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<MedicalSurveillanceTable?> deleteMedicalSurveillance({
    required int id,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = MedicalSurveillanceTableRequest(
        id: id,
        partographId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        maternalPosition: '',
        arterialPressure: 'arterialPressure',
        maternalPulse: 'maternalPulse',
        fetalHeartRate: 'fetalHeartRate',
        contractionsDuration: 'contractionsDuration',
        frequencyContractions: 'frequencyContractions',
        pain: 'pain',
        letter: 'letter',
        time: DateTime.now(),
      );

      final result = await _partographService.deleteMedicalSurveillanceTable(
        token,
        request,
      );

      if (result.response == null) return null;

      return _mapper.convert<MedicalSurveillanceTableResponse,
          MedicalSurveillanceTable>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<List<MedicalSurveillanceTable>?> getMedicalSurveillance({
    required String partographId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _partographService.getMedicalSurveillanceTable(
        token,
        partographId,
      );

      if (result.response == null) return null;

      return _mapper.convertList<MedicalSurveillanceTableResponse,
          MedicalSurveillanceTable>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<MedicalSurveillanceTable?> updateMedicalSurveillance({
    required int id,
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = MedicalSurveillanceTableRequest(
        id: id,
        partographId: partographId,
        maternalPosition: maternalPosition,
        arterialPressure: arterialPressure,
        maternalPulse: maternalPulse,
        fetalHeartRate: fetalHeartRate,
        contractionsDuration: contractionsDuration,
        frequencyContractions: frequencyContractions,
        pain: pain,
        letter: letter,
        time: time,
      );

      final result = await _partographService.updateMedicalSurveillanceTable(
        token,
        request,
      );

      if (result.response == null) return null;

      return _mapper
          .convert<MedicalSurveillanceTableResponse, MedicalSurveillanceTable>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PresentationPositionVariety?> createPresentationPositionVariety({
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PresentationPositionVarietyEntityRequest(
        id: 0,
        partographId: partographId,
        hodgePlane: hodgePlane,
        position: position,
        time: time,
      );

      final result = await _partographService.createPresentationPositionVariety(
        token,
        request,
      );

      if (result.response == null) return null;

      return _mapper.convert<PresentationPositionVarietyEntityResponse,
          PresentationPositionVariety>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PresentationPositionVariety?> deletePresentationPositionVariety({
    required int id,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PresentationPositionVarietyEntityRequest(
        id: id,
        partographId: '',
        hodgePlane: 0,
        position: 0,
        time: DateTime.now(),
      );

      final result = await _partographService.deletePresentationPositionVariety(
        token,
        request,
      );

      if (result.response == null) return null;

      return _mapper.convert<PresentationPositionVarietyEntityResponse,
          PresentationPositionVariety>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<List<PresentationPositionVariety>?> getPresentationPositionVariety({
    required String partographId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _partographService.getPresentationPositionVariety(
        token,
        partographId,
      );

      if (result.response == null) return null;

      return _mapper.convertList<PresentationPositionVarietyEntityResponse,
          PresentationPositionVariety>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PresentationPositionVariety?> updatePresentationPositionVariety({
    required int id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PresentationPositionVarietyEntityRequest(
        id: id,
        partographId: partographId,
        hodgePlane: hodgePlane,
        position: position,
        time: DateTime.now(),
      );

      final result = await _partographService.updatePresentationPositionVariety(
        token,
        request,
      );

      if (result.response == null) return null;

      return _mapper.convert<PresentationPositionVarietyEntityResponse,
          PresentationPositionVariety>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<AlertCurves?> getCurves({required String partographId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';
      final result = await _partographService.getCurves(token, partographId);

      return _mapper.convert<AlertCurvesResponse, AlertCurves>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ContractionFrequency?> createContractionFrequency({
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = ContractionFrequencyRequest(
        id: 0,
        partographId: partographId,
        value: value,
        time: time,
      );

      final result =
          await _partographService.createContractionFrequency(token, request);

      return _mapper
          .convert<ContractionFrequencyResponse, ContractionFrequency>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<FetalHeartRate?> createFetalHeartRate({
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = FetalHeartRateRequest(
        id: 0,
        partographId: partographId,
        value: value,
        time: time,
      );

      final result =
          await _partographService.createFetalHeartRate(token, request);

      return _mapper.convert<FetalHeartRateResponse, FetalHeartRate>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ContractionFrequency?> deleteContractionFrequency({
    required int id,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = ContractionFrequencyRequest(
        id: id,
        partographId: '',
        value: '',
        time: DateTime.now(),
      );

      final result =
          await _partographService.deleteContractionFrequency(token, request);

      return _mapper
          .convert<ContractionFrequencyResponse, ContractionFrequency>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<FetalHeartRate?> deleteFetalHeartRate({required int id}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = FetalHeartRateRequest(
        id: id,
        partographId: '',
        value: '',
        time: DateTime.now(),
      );

      final result =
          await _partographService.deleteFetalHeartRate(token, request);

      return _mapper.convert<FetalHeartRateResponse, FetalHeartRate>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<List<ContractionFrequency>?> getContractionFrequency({
    required String partographId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result =
          await _partographService.getContractionFrequency(token, partographId);

      return _mapper
          .convertList<ContractionFrequencyResponse, ContractionFrequency>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<List<FetalHeartRate>?> getFetalHeartRate({
    required String partographId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result =
          await _partographService.getFetalHeartRate(token, partographId);

      return _mapper.convertList<FetalHeartRateResponse, FetalHeartRate>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<ContractionFrequency?> updateContractionFrequency({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = ContractionFrequencyRequest(
        id: id,
        partographId: partographId,
        value: value,
        time: time,
      );

      final result =
          await _partographService.updateContractionFrequency(token, request);

      return _mapper
          .convert<ContractionFrequencyResponse, ContractionFrequency>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<FetalHeartRate?> updateFetalHeartRate({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = FetalHeartRateRequest(
        id: id,
        partographId: partographId,
        value: value,
        time: time,
      );

      final result =
          await _partographService.updateFetalHeartRate(token, request);

      return _mapper.convert<FetalHeartRateResponse, FetalHeartRate>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
