import 'package:flutter/material.dart';

enum _Options { newPartograph, configuration, information }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BirthFlow'),
          elevation: 2,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton<_Options>(
              padding: const EdgeInsets.all(12),
              position: PopupMenuPosition.under,
              onSelected: (_Options item) {
                if (item == _Options.newPartograph) {}

                if (item == _Options.configuration) {}
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<_Options>>[
                const PopupMenuItem<_Options>(
                  value: _Options.newPartograph,
                  child: Text('Nuevo Partograma'),
                ),
                const PopupMenuItem<_Options>(
                  value: _Options.configuration,
                  child: Text('Configuracion'),
                ),
                const PopupMenuItem<_Options>(
                  value: _Options.information,
                  child: Text('Informacion'),
                ),
              ],
            ),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(
              kToolbarHeight,
            ), // Ajusta la altura según tu diseño
            child: SizedBox(
              width: double.infinity,
              child: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    text: 'Partogramas',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const Center(
          child: Text('Home'),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Nuevo',
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
