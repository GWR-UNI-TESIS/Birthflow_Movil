import 'package:dio/dio.dart';

Dio buildDioClient(String base, String deviceInfo) {
  final dio = Dio(
    BaseOptions(
      baseUrl: base,
      connectTimeout:
          const Duration(seconds: 100), // Tiempo de espera de conexión
      receiveTimeout:
          const Duration(seconds: 100), // Tiempo de espera de recepción
      validateStatus: (status) {
        // Aceptar todos los códigos de estado menores a 500
        return status != null && status < 500;
      },
      headers: {
        'Content-Type': 'application/json',
        'Device-Info': deviceInfo,
        // Establece el Content-Type
        // Puedes agregar otros headers necesarios aquí
      },
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        // Puedes agregar aquí headers de autenticación o hacer modificaciones a la solicitud
        handler.next(options); // Permite que la solicitud continúe
      },
      onResponse: (response, handler) {
        // Puedes agregar lógica para manejar respuestas aquí
        handler.next(response); // Permite que la respuesta continúe
      },
      // ignore: deprecated_member_use
      onError: (DioError e, handler) {
        // Puedes agregar lógica para manejar errores aquí
        handler.next(e); // Permite que el error continúe
      },
    ),
  );
  return dio;
}
