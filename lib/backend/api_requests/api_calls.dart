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

class SurahJBICall {
  static Future<ApiCallResponse> call({
    int? noSurah,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'surahJBI',
      apiUrl: 'aldinnasrunm.github.io/MukmeenAPI/surah/${noSurah}.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'no_surah': noSurah,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CariKotaCall {
  static Future<ApiCallResponse> call({
    String? namaKota = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'cari kota',
      apiUrl: 'https://api.myquran.com/v1/sholat/kota/cari/${namaKota}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'nama_kota': namaKota,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SemuaKotaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'semuaKota',
      apiUrl: 'https://api.myquran.com/v1/sholat/kota/semua',
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

class GeoNameCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? long,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'geoName',
      apiUrl: 'https://geocode.maps.co/reverse?lat=${lat}&lon=${long}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'long': long,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class JadwalSholatCall {
  static Future<ApiCallResponse> call({
    String? idKota = '',
    int? tahun,
    int? bulan,
    int? tanggal,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'jadwalSholat',
      apiUrl:
          'https://api.myquran.com/v1/sholat/jadwal/${idKota}/${tahun}/${bulan}/${tanggal}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idKota': idKota,
        'tahun': tahun,
        'bulan': bulan,
        'tanggal': tanggal,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class IdKotaCall {
  static Future<ApiCallResponse> call({
    String? namakota = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'idKota',
      apiUrl: 'https://api.myquran.com/v1/sholat/kota/cari/${namakota}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'namakota': namakota,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DoaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'doa',
      apiUrl: 'https://open-api.my.id/api/doa',
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

class DoadetailCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'doadetail',
      apiUrl: 'https://open-api.my.id/api/doa/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VideoDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'videoData',
      apiUrl: 'https://aldinnasrunm.github.io/MukmeenAPI/video_data.json',
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
