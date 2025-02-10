import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:chopper/chopper.dart';
import 'package:walpapers_app/infrastucture/serializers/serializer.dart';

final jsonSerializers = (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

class BuiltValueConverter extends JsonConverter {
  T? _deserialize<T>(dynamic value) {
    final serializer = jsonSerializers.serializerForType(T) as Serializer<T>?;
    if (serializer == null) {
      throw Exception('No serializer for type $T');
    }

    return jsonSerializers.deserializeWith<T>(serializer, value);
  }

  BuiltList<T> _deserializeListOf<T>(Iterable value) => BuiltList(
        value.map((value) => _deserialize<T>(value)).toList(growable: false),
      );

  dynamic _decode<T>(dynamic entity) {
    /// handle case when we want to access to Map<String, dynamic> directly
    /// getResource or getMapResource
    /// Avoid dynamic or unconverted value, this could lead to several issues
    if (entity is T) return entity;

    try {
      return entity is List ? _deserializeListOf<T>(entity) : _deserialize<T>(entity);
    } catch (e) {
      print(e);

      return null;
    }
  }

  @override
  FutureOr<Response<ResultType>> convertResponse<ResultType, Item>(
    Response response,
  ) async {
    // use [JsonConverter] to decode json
    final Response jsonRes = await super.convertResponse(response);
    final body = _decode<Item>(jsonRes.body);

    return jsonRes.copyWith<ResultType>(body: body);
  }

  @override
  Request convertRequest(Request request) => super.convertRequest(
        request.copyWith(
          body: serializers.serialize(request.body),
        ),
      );
}

class ErrorMyConverter implements ErrorConverter {
  @override
  FutureOr<Response> convertError<Detail, PaymentResult>(Response response) {
    var body = response.body;
    if (body.toString().length > 200) {
      throw UnimplementedError(body.toString().substring(0, 198).replaceAll("\n", " "));
    } else {
      if (body.toString().contains("\"Message\":")) {
        Map<String, dynamic> res = jsonDecode(body);
        if (res.keys.contains("data")) {
          Map<String, dynamic> data = res['data'];
          if (data.keys.contains("Message")) {
            throw UnimplementedError(data['Message']);
          } else {
            throw UnimplementedError(body.toString().replaceAll("\n", " "));
          }
        } else {
          throw UnimplementedError(body.toString().replaceAll("\n", " "));
        }
      } else {
        throw UnimplementedError(body.toString().replaceAll("\n", " "));
      }
    }
  }
}
