import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PartographScreen extends StatefulWidget {
  final String partographId;

  const PartographScreen({super.key, required this.partographId});
  @override
  State<StatefulWidget> createState() => _PartographState();
}

class _PartographState extends State<PartographScreen> {
  @override
  void initState() {
    BlocProvider.of<PartographBloc>(context).add(
      onFetchData(partographId: widget.partographId),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.partographId),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () => context
                ..goNamed(
                  RoutePaths.cervicalDilationList.name,
                  extra: widget.partographId,
                ),
              child: const Text('Dilataciones Cervicales'),
            ),
          ],
        ),
      ),
    );
  }
}
