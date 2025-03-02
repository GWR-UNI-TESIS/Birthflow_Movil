import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/refresh_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioClient {
  late Dio _dio;

  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  DioClient._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://tu-api.com', // Esto se puede modificar en el locator
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        followRedirects: true,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    _dio.interceptors.add(
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
              final auth = await locator<RefreshUsecase>().execute();
              final newAccessToken = auth.accessToken;

              // Actualizar el header global de Dio
              _dio.options.headers['Authorization'] = 'Bearer $newAccessToken';

              // Actualizar el header en la solicitud original
              error.requestOptions.headers['Authorization'] =
                  'Bearer $newAccessToken';

              // Reintentar la solicitud original con el nuevo token
              final opts = error.requestOptions;
              final response = await _dio.request(
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

          if (error.type == DioExceptionType.connectionTimeout ||
              error.type == DioExceptionType.receiveTimeout ||
              error.type == DioExceptionType.sendTimeout) {
            mostrarPantallaDeError(
              'Tiempo de espera agotado. Verifica tu conexión.',
            );
          } else if (error.type == DioExceptionType.connectionError) {
            mostrarPantallaDeError('Error de conexión. Verifica tu Internet.');
          } else {
            mostrarPantallaDeError('Ocurrió un error inesperado.');
          }

          // Para otros errores, continuar el flujo normal
          return handler.next(error);
        },
      ),
    );
  }

  void mostrarPantallaDeError(String message) {
    final navigator = locator<GlobalKey<NavigatorState>>().currentState;
    if (navigator != null) {
      navigator.pushNamed('/error', arguments: message);
    }
  }

  Dio get dio => _dio;
}
