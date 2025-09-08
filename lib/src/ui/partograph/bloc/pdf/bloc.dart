import 'package:birthflow_movil/src/domain/reports/usecases/get_partograph_pdf.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/pdf/events/pdf_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/pdf/states/pdf_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PdfBloc extends Bloc<PdfEvent, PdfState> {
  final GetPartographPdf getPartographPdf;

  PdfBloc(this.getPartographPdf) : super(const PdfState.initial()) {
    on<LoadPdf>((event, emit) async {
      emit(const PdfState.loading());
      try {
        final pdfBytes = await getPartographPdf.execute(
          partographId: event.partographId,
        );
        emit(PdfState.loaded(pdfBytes));
      } catch (e) {
        emit(const PdfState.error('Error al cargar el PDF'));
      }
    });
  }
}
