import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_event.freezed.dart';

@freezed
class PdfEvent with _$PdfEvent {
  const factory PdfEvent.loadPdf({
    required String partographId,
  }) = LoadPdf;
}
