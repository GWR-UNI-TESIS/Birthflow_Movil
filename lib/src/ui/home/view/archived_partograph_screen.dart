import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:birthflow_movil/src/ui/home/widget/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ArchivedPartographScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Archivados'),
      ),
      body: BlocBuilder<PartographsBloc, PartographsState>(
        builder: (context, state) => state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (data) {
            // Filtrar los partogramas archivados
            final archivedData =
                data.where((partograph) => partograph.isAchived).toList();

            if (archivedData.isEmpty) {
              return const Center(child: Text('No hay partogramas archivados'));
            }

            return _buildPartographsList(archivedData);
          },
          error: (message) => Center(child: Text('Error: $message')),
          empty: () => const Center(child: Text('No hay datos')),
        ),
      ),
    );
  }

  Widget _buildPartographsList(List<PartographList> data) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final item = data[index];
              final lastModification = item.updateAt ?? item.createdAt;
              return ListItemWidget(
                partographId: item.partographId!,
                title: item.name,
                subtitle:
                    '${item.recordName}-${DateFormat('yyyy-MM-dd').format(item.date)}',
                lastUpdate: DateFormat('yyyy-MM-dd').format(lastModification!),
                set: item.set,
                silenced: item.silenced,
                createBy: item.createdBy!,
                permissionTypeId: item.accessType,
                isAchived: item.isAchived,
                favorite: item.favorite,
              );
            },
            childCount: data.length + 1,
          ),
        ),
      ],
    );
  }
}
