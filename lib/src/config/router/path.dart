import 'package:go_router_paths/go_router_paths.dart';

// ignore: avoid_classes_with_only_static_members
class AppPaths {
  static Path get splash => Path('splash');
  static WelcomePath get welcome => WelcomePath();
  static HomePath get home => HomePath();
}

class WelcomePath extends Path<WelcomePath> {
  WelcomePath() : super('welcome');

  Path get login => Path('login', parent: this);
  Path get register => Path('register', parent: this);
}

class HomePath extends Path<HomePath> {
  HomePath() : super('home');

  Path get search => Path('search', parent: this);
  Path get create => Path('create-partograph', parent: this);

  PartographPath get partographPath => PartographPath(this);
}

class PartographPath extends Param<PartographPath> {
  PartographPath(HomePath homePath)
      : super.only('partographId', parent: homePath);

  Path get update => Path('update', parent: this);

  CervicalDilationPath get cervicalDilationList => CervicalDilationPath(this);
  MedicalSurveillancePath get medicalSurveillanceListPath =>
      MedicalSurveillancePath(this);
  PresentationPositionVarietyPath get presentationPositionVarietyPath =>
      PresentationPositionVarietyPath(this);
  FetalHeartRatePath get fetalHeartRatePath => FetalHeartRatePath(this);
  ContractionFrequencyPath get contractionFrequencyPath =>
      ContractionFrequencyPath(this);
  ChartPath get chart => ChartPath(this);
}

class CervicalDilationPath extends Path<CervicalDilationPath> {
  CervicalDilationPath(PartographPath partographPath)
      : super('cervical-dilation-list', parent: partographPath);
  Path get create => Path('create', parent: this);
  Path get edit => Path('edit', parent: this);
}

class ChartPath extends Path<ChartPath> {
  ChartPath(PartographPath partographPath)
      : super('chart', parent: partographPath);
}

class MedicalSurveillancePath extends Path<MedicalSurveillancePath> {
  MedicalSurveillancePath(PartographPath partographPath)
      : super('medical-surveillance-table', parent: partographPath);
  Path get create => Path('create', parent: this);
  Path get edit => Path('edit', parent: this);
}

class PresentationPositionVarietyPath
    extends Path<PresentationPositionVarietyPath> {
  PresentationPositionVarietyPath(PartographPath partographPath)
      : super('presentation-position-variety', parent: partographPath);
  Path get create => Path('create', parent: this);
  Path get edit => Path('edit', parent: this);
}

class FetalHeartRatePath extends Path<FetalHeartRatePath> {
  FetalHeartRatePath(PartographPath partographPath)
      : super('fetal-heart-rate', parent: partographPath);
  Path get create => Path('create', parent: this);
  Path get edit => Path('edit', parent: this);
}

class ContractionFrequencyPath extends Path<ContractionFrequencyPath> {
  ContractionFrequencyPath(PartographPath partographPath)
      : super('contraction-frecuency', parent: partographPath);
  Path get create => Path('create', parent: this);
  Path get edit => Path('edit', parent: this);
}
