import 'package:freezed_annotation/freezed_annotation.dart';

part 'paridad.freezed.dart';

@freezed
sealed class Paridad with _$Paridad {
  const factory Paridad.init() = Init;
  const factory Paridad.todas() = Todas;
  const factory Paridad.multiparas() = Multiparas;
  const factory Paridad.nuliparas() = Nuliparas;

  const Paridad._();

  bool get isInit => this is Init;
  bool get isTodas => this is Todas;
  bool get isNuliparas => this is Nuliparas;
  bool get isMultiparas => this is Multiparas;

  @override
  String toString() {
    return when(
      init: () => 'init',
      todas: () => 'todas',
      multiparas: () => 'multiparas',
      nuliparas: () => 'nuliparas',
    );
  }
}
