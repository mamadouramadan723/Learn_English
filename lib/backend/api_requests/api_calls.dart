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
    String? pronunciationAssessment =
        'ewogICJSZWZlcmVuY2VUZXh0IjogIkhvdyBkbyBJIHJ1biB0aGlzIHByb2dyYW0iLAogICJHcmFkaW5nU3lzdGVtIjogIkh1bmRyZWRNYXJrIiwKICAiRGltZW5zaW9uIjogIkNvbXByZWhlbnNpdmUiCn0=',
    String? granularity = '',
    String? language = '',
    String? format = '',
    String? contentType = 'audio/wav; codecs=audio/pcm; samplerate=16000',
    FFUploadedFile? audio,
    String? accept = 'application/json',
    String? ocpApimSubscriptionKey = '0e415183127541a48763789785c3dbe4',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Test 1',
      apiUrl:
          '${SpeechAPIGroup.baseUrl}/speech/recognition/conversation/cognitiveservices/v1',
      callType: ApiCallType.POST,
      headers: {
        ...SpeechAPIGroup.headers,
        'Pronunciation-Assessment': '${pronunciationAssessment}',
        'Granularity': '${granularity}',
        'content-type': '${contentType}',
        'Ocp-Apim-Subscription-Key': '${ocpApimSubscriptionKey}',
      },
      params: {
        'audio': audio,
      },
      bodyType: BodyType.MULTIPART,
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
