import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/refresh_usecase.dart';
import 'package:dio/dio.dart';

Dio buildDioClient(String base, String deviceInfo) {
  final dio = Dio(
    BaseOptions(
      baseUrl: base,
      connectTimeout:
          const Duration(seconds: 100), // Tiempo de espera de conexión
      receiveTimeout:
          const Duration(seconds: 100), // Tiempo de espera de recepción
      followRedirects: true,
      validateStatus: (status) {
        // Aceptar todos los códigos de estado menores a 500
        return status != null && status < 500 && status != 401;
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
      onError: (error, handler) async {
        // Si se recibe un error 401, se intenta refrescar el token
        if (error.response?.statusCode == 401 &&
          error.requestOptions.extra['isRetry'] != true) {
          try {
            // Ejecutar el caso de uso de refresh para obtener un nuevo token
            final auth = await  locator<RefreshUsecase>().execute();
            final newAccessToken = auth.accessToken;

            // Actualizar el header global de Dio
            dio.options.headers['Authorization'] =
                'Bearer $newAccessToken';

            // Actualizar el header en la solicitud original
            error.requestOptions.headers['Authorization'] =
                'Bearer $newAccessToken';

            // Reintentar la solicitud original con el nuevo token
            final opts = error.requestOptions;
            final response = await dio.request(
              opts.path,
              options: Options(
                method: opts.method,
                headers: opts.headers,
              ),
              data: opts.data,
              queryParameters: opts.queryParameters,
            );
            return handler.resolve(response);
          } catch (e) {
            // Si ocurre un error en el refresh, se propaga el error original
            return handler.reject(error);
          }
        }
        // Para otros errores, continuar el flujo normal
        return handler.next(error);
      },
    ),
  );
  return dio;
}
