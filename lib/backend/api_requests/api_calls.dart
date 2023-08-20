import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Speech API Group Code

class SpeechAPIGroup {
  static String baseUrl = 'https://eastus.stt.speech.microsoft.com';
  static Map<String, String> headers = {};
  static Test1Call test1Call = Test1Call();
}

class Test1Call {
  Future<ApiCallResponse> call({
    String? pronunciationAssessment = '',
    String? granularity = 'Word',
    String? language = 'en-US',
    String? format = 'detailed',
  }) {
    final body = '''
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Test 1',
      apiUrl:
          '${SpeechAPIGroup.baseUrl}/speech/recognition/conversation/cognitiveservices/v1',
      callType: ApiCallType.POST,
      headers: {
        ...SpeechAPIGroup.headers,
        'Pronunciation-Assessment': '${pronunciationAssessment}',
        'Granularity': '${granularity}',
        'Ocp-Apim-Subscription-Key': '0e415183127541a48763789785c3dbe4',
      },
      params: {},
      body: body,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Speech API Group Code

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
