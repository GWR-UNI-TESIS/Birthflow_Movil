/// Representa los tokens utilizados en el proceso de autenticación.
/// 
/// Generalmente incluye un [accessToken] para acceder a los recursos protegidos
/// y un [refreshToken] para obtener nuevos tokens de acceso sin necesidad de 
/// volver a iniciar sesión.
class Tokens {
  /// Token de acceso otorgado tras la autenticación.
  /// 
  /// Se utiliza para realizar solicitudes a recursos protegidos en la API.
  /// Puede ser `null` si no se generó correctamente.
  final String? accessToken;

  /// Token de actualización que permite obtener un nuevo [accessToken]
  /// cuando este expira, sin que el usuario deba autenticarse nuevamente.
  /// Puede ser `null` si no fue provisto por el servidor.
  final String? refreshToken;

  /// Constructor de la clase [Tokens].
  Tokens({
    required this.accessToken,
    required this.refreshToken,
  });
}
