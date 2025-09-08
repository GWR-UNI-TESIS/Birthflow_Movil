import 'package:dio/dio.dart';

Dio buildDioAuth(String base, String deviceInfo) {
  final dio = Dio(
    BaseOptions(
      baseUrl: base,
      connectTimeout:
          const Duration(seconds: 30), // Tiempo de espera de conexión
      receiveTimeout:
          const Duration(seconds: 30), // Tiempo de espera de recepción
      followRedirects: true,
      validateStatus: (status) {
        // Aceptar todos los códigos de estado menores a 500
        return status != null;
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
        // Aquí puedes actualizar o agregar headers si fuera necesario
        handler.next(options);
      },
      onResponse: (response, handler) {
        handler.next(response);
      },
      onError: (error, handler) {
        return handler.next(error);
      },
    ),
  );
  return dio;
}
