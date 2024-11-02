import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curve_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curves_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/contraction_frequency_response/contraction_frequency_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/fetal_heart_rate_response/fetal_heart_rate_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_response/medical_surveillance_table_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_list_response/partograph_list_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_response/partograph_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_state_response/partograph_state_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_response/presentation_position_variety_entity_response.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_state.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/mappers/mapper.auto_mappr.dart';


// Configuración del mapper
@AutoMappr([
  MapType<PartographResponse, Partograph>(),
  MapType<PartographListResponse, PartographList>(),
  MapType<CervicalDilationResponse, CervicalDilation>(),
  MapType<MedicalSurveillanceTableResponse, MedicalSurveillanceTable>(),
  MapType<PresentationPositionVarietyEntityResponse, PresentationPositionVariety>(),
  MapType<FetalHeartRateResponse, FetalHeartRate>(),
  MapType<ContractionFrequencyResponse, ContractionFrequency>(),
  MapType<PartographStateResponse, PartographState>(),
  MapType<AlertCurvesResponse, AlertCurves>(),
  MapType<AlertCurveResponse, AlertCurve>(),
])
class Mappr extends $Mappr {}
