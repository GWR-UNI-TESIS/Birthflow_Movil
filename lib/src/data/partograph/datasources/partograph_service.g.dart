// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _PartographService implements PartographService {
  _PartographService(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiResponse<List<PartographResponse>>> get(
    String token,
    String id,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<PartographResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Get/partograph/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<List<PartographResponse>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<PartographResponse>(
                  (i) => PartographResponse.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<ApiResponse<PartographResponse>> create(
    String token,
    PartographRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<PartographResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Create/partograph',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<PartographResponse>.fromJson(
      _result.data!,
      (json) => PartographResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<List<CervicalDilationResponse>>> getCervicalDilation(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<CervicalDilationResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Get/cervical-dilation/${partographId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<List<CervicalDilationResponse>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<CervicalDilationResponse>((i) =>
                  CervicalDilationResponse.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<ApiResponse<CervicalDilationResponse>> createCervicalDilation(
    String token,
    CervicalDilationRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<CervicalDilationResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Create/cervical-dilation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<CervicalDilationResponse>.fromJson(
      _result.data!,
      (json) => CervicalDilationResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<CervicalDilationResponse>> updateCervicalDilation(
    String token,
    CervicalDilationRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<CervicalDilationResponse>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Update/cervical-dilation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<CervicalDilationResponse>.fromJson(
      _result.data!,
      (json) => CervicalDilationResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<CervicalDilationResponse>> deleteCervicalDilation(
    String token,
    CervicalDilationRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<CervicalDilationResponse>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Delete/cervical-dilation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<CervicalDilationResponse>.fromJson(
      _result.data!,
      (json) => CervicalDilationResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<List<MedicalSurveillanceTableResponse>>>
      getMedicalSurveillanceTable(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<List<MedicalSurveillanceTableResponse>>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/Partograph/Get/medical-surveillance/${partographId}',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                ))));
    final value = ApiResponse<List<MedicalSurveillanceTableResponse>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<MedicalSurveillanceTableResponse>((i) =>
                  MedicalSurveillanceTableResponse.fromJson(
                      i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<ApiResponse<MedicalSurveillanceTableResponse>>
      createMedicalSurveillanceTable(
    String token,
    MedicalSurveillanceTableRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<MedicalSurveillanceTableResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Create/medical-surveillance',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<MedicalSurveillanceTableResponse>.fromJson(
      _result.data!,
      (json) => MedicalSurveillanceTableResponse.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<MedicalSurveillanceTableResponse>>
      updateMedicalSurveillanceTable(
    String token,
    MedicalSurveillanceTableRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<MedicalSurveillanceTableResponse>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Update/medical-surveillance',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<MedicalSurveillanceTableResponse>.fromJson(
      _result.data!,
      (json) => MedicalSurveillanceTableResponse.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<MedicalSurveillanceTableResponse>>
      deleteMedicalSurveillanceTable(
    String token,
    MedicalSurveillanceTableRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<MedicalSurveillanceTableResponse>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Partograph/Delete/medical-surveillance',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<MedicalSurveillanceTableResponse>.fromJson(
      _result.data!,
      (json) => MedicalSurveillanceTableResponse.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<List<PresentationPositionVarietyEntityResponse>>>
      getPresentationPositionVariety(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        ApiResponse<List<PresentationPositionVarietyEntityResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/Partograph/Get/presentation-position-variety/${partographId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
    final value =
        ApiResponse<List<PresentationPositionVarietyEntityResponse>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<PresentationPositionVarietyEntityResponse>((i) =>
                  PresentationPositionVarietyEntityResponse.fromJson(
                      i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>>
      createPresentationPositionVariety(
    String token,
    PresentationPositionVarietyEntityRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<PresentationPositionVarietyEntityResponse>>(
            Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/Partograph/Create/presentation-position-variety',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                ))));
    final value =
        ApiResponse<PresentationPositionVarietyEntityResponse>.fromJson(
      _result.data!,
      (json) => PresentationPositionVarietyEntityResponse.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>>
      updatePresentationPositionVariety(
    String token,
    PresentationPositionVarietyEntityRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<PresentationPositionVarietyEntityResponse>>(
            Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/Partograph/Update/presentation-position-variety',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                ))));
    final value =
        ApiResponse<PresentationPositionVarietyEntityResponse>.fromJson(
      _result.data!,
      (json) => PresentationPositionVarietyEntityResponse.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>>
      deletePresentationPositionVariety(
    String token,
    PresentationPositionVarietyEntityRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<PresentationPositionVarietyEntityResponse>>(
            Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/Partograph/Delete/presentation-position-variety',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                ))));
    final value =
        ApiResponse<PresentationPositionVarietyEntityResponse>.fromJson(
      _result.data!,
      (json) => PresentationPositionVarietyEntityResponse.fromJson(
          json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
