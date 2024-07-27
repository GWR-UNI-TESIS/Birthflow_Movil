
enum Filters { all, openRecently, shared, favorites }

extension FilterExtension on Filters {
  // names in non-english
  String get name {
    switch (this) {
      case Filters.all:
        return 'Todos';
      case Filters.openRecently:
        return 'Abiertos Recientemente';
      case Filters.shared:
        return 'Compartidos';
      case Filters.favorites:
        return 'Favoritos';
      default:
        return 'No hay';
    }
  }
}

class FilterModel {
  final Filters filter;
  final String actividad;
  final String hora;

  FilterModel({
    required this.filter,
    required this.actividad,
    required this.hora,
  });

  @override
  String toString() {
    return 'FilterModel(filter: $filter, actividad: $actividad, hora: $hora)';
  }
}
