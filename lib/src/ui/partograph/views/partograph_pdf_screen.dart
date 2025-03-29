import 'dart:io';
import 'dart:typed_data';

import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/reports/usecases/get_partograph_pdf.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/pdf/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/pdf/events/pdf_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/pdf/states/pdf_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewPage extends StatelessWidget {
  final String partographId;

  const PdfViewPage({
    super.key,
    required this.partographId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PdfBloc>(
      create: (_) => PdfBloc(locator<GetPartographPdf>()) // Inyectás el repo
        ..add(PdfEvent.loadPdf(
          partographId: partographId,
        )),
      child: PdfViewerScaffold(
        partographId: partographId,
      ),
    );
  }
}

class PdfViewerScaffold extends StatelessWidget {
  final String partographId;

  const PdfViewerScaffold({super.key, required this.partographId});

  @override
  Widget build(BuildContext context) {
    final documentName = context.watch<PartographBloc>().state.maybeWhen(
        loaded: (partograph, message, isDeleteEvent) => partograph.name,
        orElse: () => partographId);
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Partograma'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {
              final state = context.read<PdfBloc>().state;

              state.mapOrNull(
                loaded: (pdfState) async {
                  final path = await guardarPdfEnDispositivo(
                    pdfState.pdfBytes,
                    '$documentName.pdf',
                  );
                  if (path != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('PDF guardado en:\n$path')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Error al guardar PDF')),
                    );
                  }
                },
              );
            },
          )
        ],
      ),
      body: BlocBuilder<PdfBloc, PdfState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (pdfBytes) => Padding(padding: const EdgeInsets.all(7), child:  SfPdfViewer.memory(pdfBytes)),
            error: (msg) => Center(child: Text(msg)),
          );
        },
      ),
    );
  }

  Future<String?> guardarPdfEnDispositivo(
      Uint8List bytes, String filename) async {
    // Pedir permisos (solo necesarios en Android)
    if (Platform.isAndroid) {
      final status = await Permission.storage.request();

      if (status.isGranted) {
        print('Permiso concedido');
      } else if (status.isPermanentlyDenied) {
        await openAppSettings(); // ✅ Función incluida en permission_handler
      } else {
        print('Permiso denegado');
      }
    }

    try {
      final dir =
          getDownloadDirectory(); // en Android: /storage/emulated/0/Android/data/<package>/files
      final file = File('${dir.path}/$filename');

      await file.writeAsBytes(bytes, flush: true);
      return file.path;
    } catch (e) {
      return null;
    }
  }

  Directory getDownloadDirectory() {
    return Directory('/storage/emulated/0/Download');
  }
}
