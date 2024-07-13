// Clase abstracta para definir casos de uso de la aplicación
abstract class UseCase<T, P> {
  // Método principal del caso de uso.
  // - T: Tipo de dato que retorna el caso de uso (puede ser null).
  // - P: Tipo de dato opcional que puede recibir el caso de uso como parámetro.
  Future<T?> execute([P? value]);
}
