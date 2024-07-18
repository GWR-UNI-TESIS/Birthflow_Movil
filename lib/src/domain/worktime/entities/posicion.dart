import 'package:freezed_annotation/freezed_annotation.dart';

part 'posicion.freezed.dart';

@freezed
class Posicion with _$Posicion {
  const factory Posicion.init() = Init;
  const factory Posicion.vertical() = Vertical;
  const factory Posicion.horizontal() = Horizontal;

  const Posicion._();

  bool get isInit => this is Init;
  bool get isVertical => this is Vertical;
  bool get isHorizontal => this is Horizontal;

  @override
  String toString() {
    return when(
      init: () => 'init',
      vertical: () => 'vertical',
      horizontal: () => 'horizontal',
    );
  }
}
