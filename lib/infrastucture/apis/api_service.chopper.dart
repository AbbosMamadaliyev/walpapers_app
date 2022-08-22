// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GetPhotosService extends GetPhotosService {
  _$GetPhotosService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GetPhotosService;

  @override
  Future<Response<PhotoListModel>> getPhotos(
      int page, int perPage, String apiKey) {
    final $url = '/curated?page=${page}&per_page=${perPage}';
    final $headers = {
      'Authorization': apiKey,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PhotoListModel, PhotoListModel>($request);
  }

  @override
  Future<Response<PhotoListModel>> searchPhotos(
      int page, int perPage, String query, String apiKey) {
    final $url = '/search?query=${query}&page=${page}&per_page=${perPage}';
    final $headers = {
      'Authorization': apiKey,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PhotoListModel, PhotoListModel>($request);
  }
}
