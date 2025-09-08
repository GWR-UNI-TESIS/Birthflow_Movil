import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_state.freezed.dart';

@freezed
class PdfState with _$PdfState {
  const factory PdfState.initial() = Initial;
  const factory PdfState.loading() = Loading;
  const factory PdfState.loaded(Uint8List pdfBytes) = Loaded;
  const factory PdfState.error(String message) = Error;
}
