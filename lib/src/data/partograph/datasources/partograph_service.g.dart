// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _PartographService implements PartographService {
  _PartographService(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiResponse<List<PartographListResponse>>> get(
    String token,
    String id,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<PartographListResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/partographs/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<PartographListResponse>> _value;
    try {
      _value = ApiResponse<List<PartographListResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<PartographListResponse>((i) =>
                    PartographListResponse.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographResponse>> getPartograph(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<PartographResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/partograph/partograph/${partographId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographResponse> _value;
    try {
      _value = ApiResponse<PartographResponse>.fromJson(
        _result.data!,
        (json) => PartographResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options = _setStreamType<ApiResponse<PartographResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/partograph/create',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographResponse> _value;
    try {
      _value = ApiResponse<PartographResponse>.fromJson(
        _result.data!,
        (json) => PartographResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographResponse>> updatePartograph(
    String token,
    PartographRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options = _setStreamType<ApiResponse<PartographResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/partograph/update',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographResponse> _value;
    try {
      _value = ApiResponse<PartographResponse>.fromJson(
        _result.data!,
        (json) => PartographResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographResponse>> deletePartograph(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<PartographResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/partograph/delete/${partographId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographResponse> _value;
    try {
      _value = ApiResponse<PartographResponse>.fromJson(
        _result.data!,
        (json) => PartographResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<PartographListResponse>>> searchPartographs(
    String token,
    SearchModelRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<List<PartographListResponse>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/search',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<PartographListResponse>> _value;
    try {
      _value = ApiResponse<List<PartographListResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<PartographListResponse>((i) =>
                    PartographListResponse.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<List<CervicalDilationResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/cervical-dilation/partograph/${partographId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<CervicalDilationResponse>> _value;
    try {
      _value = ApiResponse<List<CervicalDilationResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<CervicalDilationResponse>((i) =>
                    CervicalDilationResponse.fromJson(
                        i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<CervicalDilationResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/create/cervical-dilation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<CervicalDilationResponse> _value;
    try {
      _value = ApiResponse<CervicalDilationResponse>.fromJson(
        _result.data!,
        (json) =>
            CervicalDilationResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<CervicalDilationResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/update/cervical-dilation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<CervicalDilationResponse> _value;
    try {
      _value = ApiResponse<CervicalDilationResponse>.fromJson(
        _result.data!,
        (json) =>
            CervicalDilationResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<CervicalDilationResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/delete/cervical-dilation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<CervicalDilationResponse> _value;
    try {
      _value = ApiResponse<CervicalDilationResponse>.fromJson(
        _result.data!,
        (json) =>
            CervicalDilationResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<List<MedicalSurveillanceTableResponse>>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/partograph/medical-surveillance-table/partograph/{parthographId}',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<MedicalSurveillanceTableResponse>> _value;
    try {
      _value = ApiResponse<List<MedicalSurveillanceTableResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<MedicalSurveillanceTableResponse>((i) =>
                    MedicalSurveillanceTableResponse.fromJson(
                        i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<MedicalSurveillanceTableResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/create/medical-surveillance-table',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<MedicalSurveillanceTableResponse> _value;
    try {
      _value = ApiResponse<MedicalSurveillanceTableResponse>.fromJson(
        _result.data!,
        (json) => MedicalSurveillanceTableResponse.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<MedicalSurveillanceTableResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/update/medical-surveillance-table',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<MedicalSurveillanceTableResponse> _value;
    try {
      _value = ApiResponse<MedicalSurveillanceTableResponse>.fromJson(
        _result.data!,
        (json) => MedicalSurveillanceTableResponse.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<MedicalSurveillanceTableResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/delete/medical-surveillance-table',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<MedicalSurveillanceTableResponse> _value;
    try {
      _value = ApiResponse<MedicalSurveillanceTableResponse>.fromJson(
        _result.data!,
        (json) => MedicalSurveillanceTableResponse.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options = _setStreamType<
        ApiResponse<List<PresentationPositionVarietyEntityResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/partograph/presentation-position-variety/partograph/{parthographId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<PresentationPositionVarietyEntityResponse>> _value;
    try {
      _value =
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
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<PresentationPositionVarietyEntityResponse>>(
            Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/partograph/create/presentation-position-variety',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PresentationPositionVarietyEntityResponse> _value;
    try {
      _value = ApiResponse<PresentationPositionVarietyEntityResponse>.fromJson(
        _result.data!,
        (json) => PresentationPositionVarietyEntityResponse.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<PresentationPositionVarietyEntityResponse>>(
            Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/partograph/update/presentation-position-variety',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PresentationPositionVarietyEntityResponse> _value;
    try {
      _value = ApiResponse<PresentationPositionVarietyEntityResponse>.fromJson(
        _result.data!,
        (json) => PresentationPositionVarietyEntityResponse.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options =
        _setStreamType<ApiResponse<PresentationPositionVarietyEntityResponse>>(
            Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/partograph/delete/presentation-position-variety',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PresentationPositionVarietyEntityResponse> _value;
    try {
      _value = ApiResponse<PresentationPositionVarietyEntityResponse>.fromJson(
        _result.data!,
        (json) => PresentationPositionVarietyEntityResponse.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<ContractionFrequencyResponse>>>
      getContractionFrequency(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<ContractionFrequencyResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/contraction-frequency/partograph/${partographId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<ContractionFrequencyResponse>> _value;
    try {
      _value = ApiResponse<List<ContractionFrequencyResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<ContractionFrequencyResponse>((i) =>
                    ContractionFrequencyResponse.fromJson(
                        i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<ContractionFrequencyResponse>> createContractionFrequency(
    String token,
    ContractionFrequencyRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<ContractionFrequencyResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/create/contraction-frequency',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<ContractionFrequencyResponse> _value;
    try {
      _value = ApiResponse<ContractionFrequencyResponse>.fromJson(
        _result.data!,
        (json) =>
            ContractionFrequencyResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<ContractionFrequencyResponse>> updateContractionFrequency(
    String token,
    ContractionFrequencyRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<ContractionFrequencyResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/update/contraction-frequency',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<ContractionFrequencyResponse> _value;
    try {
      _value = ApiResponse<ContractionFrequencyResponse>.fromJson(
        _result.data!,
        (json) =>
            ContractionFrequencyResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<ContractionFrequencyResponse>> deleteContractionFrequency(
    String token,
    ContractionFrequencyRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<ContractionFrequencyResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/delete/contraction-frequency',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<ContractionFrequencyResponse> _value;
    try {
      _value = ApiResponse<ContractionFrequencyResponse>.fromJson(
        _result.data!,
        (json) =>
            ContractionFrequencyResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<FetalHeartRateResponse>>> getFetalHeartRate(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<FetalHeartRateResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/fetal-heart-rate/partograph/${partographId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<FetalHeartRateResponse>> _value;
    try {
      _value = ApiResponse<List<FetalHeartRateResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<FetalHeartRateResponse>((i) =>
                    FetalHeartRateResponse.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<FetalHeartRateResponse>> createFetalHeartRate(
    String token,
    FetalHeartRateRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<FetalHeartRateResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/create/fetal-heart-rate',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<FetalHeartRateResponse> _value;
    try {
      _value = ApiResponse<FetalHeartRateResponse>.fromJson(
        _result.data!,
        (json) => FetalHeartRateResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<FetalHeartRateResponse>> updateFetalHeartRate(
    String token,
    FetalHeartRateRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<FetalHeartRateResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/update/fetal-heart-rate',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<FetalHeartRateResponse> _value;
    try {
      _value = ApiResponse<FetalHeartRateResponse>.fromJson(
        _result.data!,
        (json) => FetalHeartRateResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<FetalHeartRateResponse>> deleteFetalHeartRate(
    String token,
    FetalHeartRateRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<FetalHeartRateResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/delete/fetal-heart-rate',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<FetalHeartRateResponse> _value;
    try {
      _value = ApiResponse<FetalHeartRateResponse>.fromJson(
        _result.data!,
        (json) => FetalHeartRateResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<ChildbirthNoteResponse>> createChildBirthNote(
    String token,
    ChildbirthNoteRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<ChildbirthNoteResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/create/childbirth-note',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<ChildbirthNoteResponse> _value;
    try {
      _value = ApiResponse<ChildbirthNoteResponse>.fromJson(
        _result.data!,
        (json) => ChildbirthNoteResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<ChildbirthNoteResponse>> updateChildBirthNote(
    String token,
    ChildbirthNoteRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<ChildbirthNoteResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/update/childbirth-note',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<ChildbirthNoteResponse> _value;
    try {
      _value = ApiResponse<ChildbirthNoteResponse>.fromJson(
        _result.data!,
        (json) => ChildbirthNoteResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographStateResponse>> updatePartographState(
    String token,
    PartographStateRequest request,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = request;
    final _options =
        _setStreamType<ApiResponse<PartographStateResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/partograph/update/state',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographStateResponse> _value;
    try {
      _value = ApiResponse<PartographStateResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographStateResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<AlertCurvesResponse>> getCurves(
    String token,
    String partographId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<AlertCurvesResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/partograph/curve/${partographId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<AlertCurvesResponse> _value;
    try {
      _value = ApiResponse<AlertCurvesResponse>.fromJson(
        _result.data!,
        (json) => AlertCurvesResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
