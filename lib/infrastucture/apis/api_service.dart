import 'package:chopper/chopper.dart';

import '../core/built_value_converter.dart';
import '../core/interceptors.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: '/curated')
abstract class GetPhotosService extends ChopperService {
  @Get(path: '?page={page}&per_page={perPage}')
  Future<Response<dynamic>> getPhotos(
    @Path('page') int page,
    @Path('perPage') int perPage,
  );

  static GetPhotosService create() =>
      _$GetPhotosService(_Client('https://api.pexels.com/v1', true));
}

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: baseUrl,
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}