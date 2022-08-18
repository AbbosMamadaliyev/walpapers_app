library photo_list_model;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'photo_list_model.g.dart';

abstract class PhotoListModel
    implements Built<PhotoListModel, PhotoListModelBuilder> {
  PhotoListModel._();

  factory PhotoListModel([Function(PhotoListModelBuilder b) updates]) =
      _$PhotoListModel;

  @BuiltValueField(wireName: 'page')
  int? get page;
  @BuiltValueField(wireName: 'per_page')
  int? get perPage;
  @BuiltValueField(wireName: 'photos')
  BuiltList<Photos>? get photos;
  @BuiltValueField(wireName: 'total_results')
  int? get totalResults;
  @BuiltValueField(wireName: 'next_page')
  String? get nextPage;
  @BuiltValueField(wireName: 'prev_page')
  String? get prevPage;

  static Serializer<PhotoListModel> get serializer =>
      _$photoListModelSerializer;
}

abstract class Photos implements Built<Photos, PhotosBuilder> {
  Photos._();

  factory Photos([Function(PhotosBuilder b) updates]) = _$Photos;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'width')
  int? get width;
  @BuiltValueField(wireName: 'height')
  int? get height;
  @BuiltValueField(wireName: 'url')
  String? get url;
  @BuiltValueField(wireName: 'photographer')
  String? get photographer;
  @BuiltValueField(wireName: 'photographer_url')
  String? get photographerUrl;
  @BuiltValueField(wireName: 'photographer_id')
  int? get photographerId;
  @BuiltValueField(wireName: 'avg_color')
  String? get avgColor;
  @BuiltValueField(wireName: 'src')
  Src? get src;
  @BuiltValueField(wireName: 'liked')
  bool? get liked;
  @BuiltValueField(wireName: 'alt')
  String? get alt;

  static Serializer<Photos> get serializer => _$photosSerializer;
}

abstract class Src implements Built<Src, SrcBuilder> {
  Src._();

  factory Src([Function(SrcBuilder b) updates]) = _$Src;

  @BuiltValueField(wireName: 'original')
  String? get original;
  @BuiltValueField(wireName: 'large2x')
  String? get large2x;
  @BuiltValueField(wireName: 'large')
  String? get large;
  @BuiltValueField(wireName: 'medium')
  String? get medium;
  @BuiltValueField(wireName: 'small')
  String? get small;
  @BuiltValueField(wireName: 'portrait')
  String? get portrait;
  @BuiltValueField(wireName: 'landscape')
  String? get landscape;
  @BuiltValueField(wireName: 'tiny')
  String? get tiny;

  static Serializer<Src> get serializer => _$srcSerializer;
}
