import 'package:go_router_paths/go_router_paths.dart';

// ignore: avoid_classes_with_only_static_members
class AppPaths {
  static Path get splash => Path('splash');
  static WelcomePath get welcome => WelcomePath();
  static HomePath get home => HomePath();
  static Path get error => Path('error');
}

class WelcomePath extends Path<WelcomePath> {
  WelcomePath() : super('welcome');

  LoginPath get login => LoginPath(this);
  Path get register => Path('register', parent: this);
}

class HomePath extends Path<HomePath> {
  HomePath() : super('home');

  Path get search => Path('search', parent: this);
  Path get archived => Path('archived', parent: this);
  Path get favorite => Path('favorite', parent: this);
  Path get create => Path('create-partograph', parent: this);

  PartographPath get partographPath => PartographPath(this);
  GroupsPath get groupsPath => GroupsPath(this);
  PartographReadOnlyPath get partographReadOnlyPath =>
      PartographReadOnlyPath(this);
  ConfigurationPath get configurationPath => ConfigurationPath(this);
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
  ChildbirthNotePath get childbirthNotePath => ChildbirthNotePath(this);
  ChartPath get chart => ChartPath(this);
  PartographHistoryPath get history => PartographHistoryPath(this);
  Path get report => Path('report', parent: this);
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

class ChildbirthNotePath extends Path<ChildbirthNotePath> {
  ChildbirthNotePath(PartographPath partographPath)
      : super('childbirth-note', parent: partographPath);
  Path get edit => Path('edit', parent: this);
}

class PartographReadOnlyPath extends Param<PartographReadOnlyPath> {
  PartographReadOnlyPath(HomePath homePath)
      : super('read-only', 'partographId', parent: homePath);
  Path get chart => Path('chart', parent: this);
}

class PartographHistoryPath extends Path<PartographHistoryPath> {
  PartographHistoryPath(PartographPath partographPath)
      : super('partograph-history', parent: partographPath);
}

class GroupsPath extends Path<GroupsPath> {
  GroupsPath(HomePath homePath) : super('groups', parent: homePath);
  Path get create => Path('create', parent: this);
  Path get edit => Path('edit', parent: this);
  Path get group => Path('group', parent: this);
}

class LoginPath extends Path<LoginPath> {
  LoginPath(WelcomePath welcomePath) : super('login', parent: welcomePath);
  Path get forgetPassword => Path('forget-password', parent: this);
}

class ConfigurationPath extends Path<ConfigurationPath> {
  ConfigurationPath(HomePath homePath)
      : super('configuration', parent: homePath);
  Path get user => Path('user', parent: this);
  Path get changePassword => Path('change-password', parent: this);
  Path get editInfo => Path('change-info', parent: this);
  Path get ayudaSop => Path('ayuda-soport', parent: this);
}
