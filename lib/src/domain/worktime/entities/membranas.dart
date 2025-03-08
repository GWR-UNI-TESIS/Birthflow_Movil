import 'package:freezed_annotation/freezed_annotation.dart';

part 'membranas.freezed.dart';

@freezed
sealed  class Membranas with _$Membranas {
  const factory Membranas.init() = Init;
  const factory Membranas.integras() = Integras;
  const factory Membranas.rotas() = Rotas;

  const Membranas._();

  bool get isInit => this is Init;
  bool get isIntegras => this is Integras;
  bool get isRotas => this is Rotas;

  @override
  String toString() {
    return when(
      init: () => 'init',
      integras: () => 'integras',
      rotas: () => 'rotas',
    );
  }
}
