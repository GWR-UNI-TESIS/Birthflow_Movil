// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _ShareService implements ShareService {
  _ShareService(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiResponse<List<SearchUserGroupResponse>>> getSearchUserGroup(
    String token,
    String query,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<SearchUserGroupResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/search-user-group',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<SearchUserGroupResponse>> _value;
    try {
      _value = ApiResponse<List<SearchUserGroupResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<SearchUserGroupResponse>((i) =>
                    SearchUserGroupResponse.fromJson(i as Map<String, dynamic>))
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
  Future<ApiResponse<PartographShareResponse>> createPartographShare(
    String token,
    PartographShareRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographShareResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-share/create',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographShareResponse> _value;
    try {
      _value = ApiResponse<PartographShareResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographShareResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographShareResponse>> updatePartographShare(
    String token,
    PartographShareRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographShareResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-share/update',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographShareResponse> _value;
    try {
      _value = ApiResponse<PartographShareResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographShareResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographShareResponse>> deletePartographShare(
    String token,
    PartographShareRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographShareResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-share/delete',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographShareResponse> _value;
    try {
      _value = ApiResponse<PartographShareResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographShareResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<GroupResponse>> createGroup(
    String token,
    GroupRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options = _setStreamType<ApiResponse<GroupResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/share/group/create',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<GroupResponse> _value;
    try {
      _value = ApiResponse<GroupResponse>.fromJson(
        _result.data!,
        (json) => GroupResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<GroupResponse>> updateGroup(
    String token,
    GroupRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options = _setStreamType<ApiResponse<GroupResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/share/group/update',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<GroupResponse> _value;
    try {
      _value = ApiResponse<GroupResponse>.fromJson(
        _result.data!,
        (json) => GroupResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<GroupResponse>> deleteGroup(
    String token,
    GroupRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options = _setStreamType<ApiResponse<GroupResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/share/group/delete',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<GroupResponse> _value;
    try {
      _value = ApiResponse<GroupResponse>.fromJson(
        _result.data!,
        (json) => GroupResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupItemResponse>> createPartographGroupItem(
    String token,
    PartographGroupItemRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupItemResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group-item/create',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupItemResponse> _value;
    try {
      _value = ApiResponse<PartographGroupItemResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupItemResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupItemResponse>> deletPartographGroupItem(
    String token,
    PartographGroupItemRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupItemResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group-item/delete',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupItemResponse> _value;
    try {
      _value = ApiResponse<PartographGroupItemResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupItemResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupResponse>> createPartographGroup(
    String token,
    PartographGroupRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group/create',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupResponse> _value;
    try {
      _value = ApiResponse<PartographGroupResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupResponse>> updatePartographGroup(
    String token,
    PartographGroupRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group/update',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupResponse> _value;
    try {
      _value = ApiResponse<PartographGroupResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupResponse>> deletePartographGroup(
    String token,
    PartographGroupRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group/delete',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupResponse> _value;
    try {
      _value = ApiResponse<PartographGroupResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupShareResponse>> createPartographGroupShare(
    String token,
    PartographGroupShareRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupShareResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group-share/create',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupShareResponse> _value;
    try {
      _value = ApiResponse<PartographGroupShareResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupShareResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupShareResponse>> updatePartographGroupShare(
    String token,
    PartographGroupShareRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupShareResponse>>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group-share/update',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupShareResponse> _value;
    try {
      _value = ApiResponse<PartographGroupShareResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupShareResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<PartographGroupShareResponse>> deletePartographGroupShare(
    String token,
    PartographGroupShareRequest body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options =
        _setStreamType<ApiResponse<PartographGroupShareResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/share/partograph-group-share/delete',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<PartographGroupShareResponse> _value;
    try {
      _value = ApiResponse<PartographGroupShareResponse>.fromJson(
        _result.data!,
        (json) =>
            PartographGroupShareResponse.fromJson(json as Map<String, dynamic>),
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
