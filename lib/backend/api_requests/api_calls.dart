import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start juzAPI Group Code

class JuzAPIGroup {
  static String baseUrl = 'https://api.quran.com/api/v4/juzs';
  static Map<String, String> headers = {};
}

/// End juzAPI Group Code

/// Start juzuk Group Code

class JuzukGroup {
  static String baseUrl = 'https://open-api.my.id/api/quran/surah/';
  static Map<String, String> headers = {};
}

/// End juzuk Group Code

class SurahAPICall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'surahAPI',
      apiUrl: 'https://open-api.my.id/api/quran/surah',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic namalatin(dynamic response) => getJsonField(
        response,
        r'''$[:].nama_latin''',
        true,
      );
  static dynamic dataSurah(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      );
}

class AyatAPICall {
  static Future<ApiCallResponse> call({
    int? nomorSurah,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ayatAPI',
      apiUrl: 'https://open-api.my.id/api/quran/surah/${nomorSurah}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'nomorSurah': nomorSurah,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SurahNewApiCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'surahNewApi',
      apiUrl: 'https://api.quran.com/api/v4/chapters?language=id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class JuzukCall {
  static Future<ApiCallResponse> call({
    int? noJuz,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'juzuk',
      apiUrl: 'https://api.quran.com/api/v4/juzs/${noJuz}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'no_juz': noJuz,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class JuzukLengkapCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'juzukLengkap',
      apiUrl: 'https://api.quran.com/api/v4/juzs',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
