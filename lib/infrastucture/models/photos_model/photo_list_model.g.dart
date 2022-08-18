// GENERATED CODE - DO NOT MODIFY BY HAND

part of photo_list_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhotoListModel> _$photoListModelSerializer =
    new _$PhotoListModelSerializer();
Serializer<Photos> _$photosSerializer = new _$PhotosSerializer();
Serializer<Src> _$srcSerializer = new _$SrcSerializer();

class _$PhotoListModelSerializer
    implements StructuredSerializer<PhotoListModel> {
  @override
  final Iterable<Type> types = const [PhotoListModel, _$PhotoListModel];
  @override
  final String wireName = 'PhotoListModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PhotoListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('per_page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Photos)])));
    }
    value = object.totalResults;
    if (value != null) {
      result
        ..add('total_results')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nextPage;
    if (value != null) {
      result
        ..add('next_page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prevPage;
    if (value != null) {
      result
        ..add('prev_page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PhotoListModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoListModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'per_page':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Photos)]))!
              as BuiltList<Object?>);
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next_page':
          result.nextPage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prev_page':
          result.prevPage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotosSerializer implements StructuredSerializer<Photos> {
  @override
  final Iterable<Type> types = const [Photos, _$Photos];
  @override
  final String wireName = 'Photos';

  @override
  Iterable<Object?> serialize(Serializers serializers, Photos object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.width;
    if (value != null) {
      result
        ..add('width')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.height;
    if (value != null) {
      result
        ..add('height')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photographer;
    if (value != null) {
      result
        ..add('photographer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photographerUrl;
    if (value != null) {
      result
        ..add('photographer_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photographerId;
    if (value != null) {
      result
        ..add('photographer_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avgColor;
    if (value != null) {
      result
        ..add('avg_color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.src;
    if (value != null) {
      result
        ..add('src')
        ..add(serializers.serialize(value, specifiedType: const FullType(Src)));
    }
    value = object.liked;
    if (value != null) {
      result
        ..add('liked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.alt;
    if (value != null) {
      result
        ..add('alt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Photos deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotosBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photographer':
          result.photographer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photographer_url':
          result.photographerUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photographer_id':
          result.photographerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avg_color':
          result.avgColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'src':
          result.src.replace(serializers.deserialize(value,
              specifiedType: const FullType(Src))! as Src);
          break;
        case 'liked':
          result.liked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'alt':
          result.alt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SrcSerializer implements StructuredSerializer<Src> {
  @override
  final Iterable<Type> types = const [Src, _$Src];
  @override
  final String wireName = 'Src';

  @override
  Iterable<Object?> serialize(Serializers serializers, Src object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.original;
    if (value != null) {
      result
        ..add('original')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.large2x;
    if (value != null) {
      result
        ..add('large2x')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.small;
    if (value != null) {
      result
        ..add('small')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.portrait;
    if (value != null) {
      result
        ..add('portrait')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.landscape;
    if (value != null) {
      result
        ..add('landscape')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tiny;
    if (value != null) {
      result
        ..add('tiny')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Src deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SrcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'original':
          result.original = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large2x':
          result.large2x = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'portrait':
          result.portrait = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'landscape':
          result.landscape = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tiny':
          result.tiny = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotoListModel extends PhotoListModel {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final BuiltList<Photos>? photos;
  @override
  final int? totalResults;
  @override
  final String? nextPage;
  @override
  final String? prevPage;

  factory _$PhotoListModel([void Function(PhotoListModelBuilder)? updates]) =>
      (new PhotoListModelBuilder()..update(updates))._build();

  _$PhotoListModel._(
      {this.page,
      this.perPage,
      this.photos,
      this.totalResults,
      this.nextPage,
      this.prevPage})
      : super._();

  @override
  PhotoListModel rebuild(void Function(PhotoListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoListModelBuilder toBuilder() =>
      new PhotoListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoListModel &&
        page == other.page &&
        perPage == other.perPage &&
        photos == other.photos &&
        totalResults == other.totalResults &&
        nextPage == other.nextPage &&
        prevPage == other.prevPage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, page.hashCode), perPage.hashCode),
                    photos.hashCode),
                totalResults.hashCode),
            nextPage.hashCode),
        prevPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhotoListModel')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('photos', photos)
          ..add('totalResults', totalResults)
          ..add('nextPage', nextPage)
          ..add('prevPage', prevPage))
        .toString();
  }
}

class PhotoListModelBuilder
    implements Builder<PhotoListModel, PhotoListModelBuilder> {
  _$PhotoListModel? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  ListBuilder<Photos>? _photos;
  ListBuilder<Photos> get photos =>
      _$this._photos ??= new ListBuilder<Photos>();
  set photos(ListBuilder<Photos>? photos) => _$this._photos = photos;

  int? _totalResults;
  int? get totalResults => _$this._totalResults;
  set totalResults(int? totalResults) => _$this._totalResults = totalResults;

  String? _nextPage;
  String? get nextPage => _$this._nextPage;
  set nextPage(String? nextPage) => _$this._nextPage = nextPage;

  String? _prevPage;
  String? get prevPage => _$this._prevPage;
  set prevPage(String? prevPage) => _$this._prevPage = prevPage;

  PhotoListModelBuilder();

  PhotoListModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _photos = $v.photos?.toBuilder();
      _totalResults = $v.totalResults;
      _nextPage = $v.nextPage;
      _prevPage = $v.prevPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhotoListModel;
  }

  @override
  void update(void Function(PhotoListModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhotoListModel build() => _build();

  _$PhotoListModel _build() {
    _$PhotoListModel _$result;
    try {
      _$result = _$v ??
          new _$PhotoListModel._(
              page: page,
              perPage: perPage,
              photos: _photos?.build(),
              totalResults: totalResults,
              nextPage: nextPage,
              prevPage: prevPage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PhotoListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Photos extends Photos {
  @override
  final int? id;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? url;
  @override
  final String? photographer;
  @override
  final String? photographerUrl;
  @override
  final int? photographerId;
  @override
  final String? avgColor;
  @override
  final Src? src;
  @override
  final bool? liked;
  @override
  final String? alt;

  factory _$Photos([void Function(PhotosBuilder)? updates]) =>
      (new PhotosBuilder()..update(updates))._build();

  _$Photos._(
      {this.id,
      this.width,
      this.height,
      this.url,
      this.photographer,
      this.photographerUrl,
      this.photographerId,
      this.avgColor,
      this.src,
      this.liked,
      this.alt})
      : super._();

  @override
  Photos rebuild(void Function(PhotosBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotosBuilder toBuilder() => new PhotosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photos &&
        id == other.id &&
        width == other.width &&
        height == other.height &&
        url == other.url &&
        photographer == other.photographer &&
        photographerUrl == other.photographerUrl &&
        photographerId == other.photographerId &&
        avgColor == other.avgColor &&
        src == other.src &&
        liked == other.liked &&
        alt == other.alt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            width.hashCode),
                                        height.hashCode),
                                    url.hashCode),
                                photographer.hashCode),
                            photographerUrl.hashCode),
                        photographerId.hashCode),
                    avgColor.hashCode),
                src.hashCode),
            liked.hashCode),
        alt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Photos')
          ..add('id', id)
          ..add('width', width)
          ..add('height', height)
          ..add('url', url)
          ..add('photographer', photographer)
          ..add('photographerUrl', photographerUrl)
          ..add('photographerId', photographerId)
          ..add('avgColor', avgColor)
          ..add('src', src)
          ..add('liked', liked)
          ..add('alt', alt))
        .toString();
  }
}

class PhotosBuilder implements Builder<Photos, PhotosBuilder> {
  _$Photos? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _photographer;
  String? get photographer => _$this._photographer;
  set photographer(String? photographer) => _$this._photographer = photographer;

  String? _photographerUrl;
  String? get photographerUrl => _$this._photographerUrl;
  set photographerUrl(String? photographerUrl) =>
      _$this._photographerUrl = photographerUrl;

  int? _photographerId;
  int? get photographerId => _$this._photographerId;
  set photographerId(int? photographerId) =>
      _$this._photographerId = photographerId;

  String? _avgColor;
  String? get avgColor => _$this._avgColor;
  set avgColor(String? avgColor) => _$this._avgColor = avgColor;

  SrcBuilder? _src;
  SrcBuilder get src => _$this._src ??= new SrcBuilder();
  set src(SrcBuilder? src) => _$this._src = src;

  bool? _liked;
  bool? get liked => _$this._liked;
  set liked(bool? liked) => _$this._liked = liked;

  String? _alt;
  String? get alt => _$this._alt;
  set alt(String? alt) => _$this._alt = alt;

  PhotosBuilder();

  PhotosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _width = $v.width;
      _height = $v.height;
      _url = $v.url;
      _photographer = $v.photographer;
      _photographerUrl = $v.photographerUrl;
      _photographerId = $v.photographerId;
      _avgColor = $v.avgColor;
      _src = $v.src?.toBuilder();
      _liked = $v.liked;
      _alt = $v.alt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Photos;
  }

  @override
  void update(void Function(PhotosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Photos build() => _build();

  _$Photos _build() {
    _$Photos _$result;
    try {
      _$result = _$v ??
          new _$Photos._(
              id: id,
              width: width,
              height: height,
              url: url,
              photographer: photographer,
              photographerUrl: photographerUrl,
              photographerId: photographerId,
              avgColor: avgColor,
              src: _src?.build(),
              liked: liked,
              alt: alt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'src';
        _src?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Photos', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Src extends Src {
  @override
  final String? original;
  @override
  final String? large2x;
  @override
  final String? large;
  @override
  final String? medium;
  @override
  final String? small;
  @override
  final String? portrait;
  @override
  final String? landscape;
  @override
  final String? tiny;

  factory _$Src([void Function(SrcBuilder)? updates]) =>
      (new SrcBuilder()..update(updates))._build();

  _$Src._(
      {this.original,
      this.large2x,
      this.large,
      this.medium,
      this.small,
      this.portrait,
      this.landscape,
      this.tiny})
      : super._();

  @override
  Src rebuild(void Function(SrcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SrcBuilder toBuilder() => new SrcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Src &&
        original == other.original &&
        large2x == other.large2x &&
        large == other.large &&
        medium == other.medium &&
        small == other.small &&
        portrait == other.portrait &&
        landscape == other.landscape &&
        tiny == other.tiny;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, original.hashCode), large2x.hashCode),
                            large.hashCode),
                        medium.hashCode),
                    small.hashCode),
                portrait.hashCode),
            landscape.hashCode),
        tiny.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Src')
          ..add('original', original)
          ..add('large2x', large2x)
          ..add('large', large)
          ..add('medium', medium)
          ..add('small', small)
          ..add('portrait', portrait)
          ..add('landscape', landscape)
          ..add('tiny', tiny))
        .toString();
  }
}

class SrcBuilder implements Builder<Src, SrcBuilder> {
  _$Src? _$v;

  String? _original;
  String? get original => _$this._original;
  set original(String? original) => _$this._original = original;

  String? _large2x;
  String? get large2x => _$this._large2x;
  set large2x(String? large2x) => _$this._large2x = large2x;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _portrait;
  String? get portrait => _$this._portrait;
  set portrait(String? portrait) => _$this._portrait = portrait;

  String? _landscape;
  String? get landscape => _$this._landscape;
  set landscape(String? landscape) => _$this._landscape = landscape;

  String? _tiny;
  String? get tiny => _$this._tiny;
  set tiny(String? tiny) => _$this._tiny = tiny;

  SrcBuilder();

  SrcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _original = $v.original;
      _large2x = $v.large2x;
      _large = $v.large;
      _medium = $v.medium;
      _small = $v.small;
      _portrait = $v.portrait;
      _landscape = $v.landscape;
      _tiny = $v.tiny;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Src other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Src;
  }

  @override
  void update(void Function(SrcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Src build() => _build();

  _$Src _build() {
    final _$result = _$v ??
        new _$Src._(
            original: original,
            large2x: large2x,
            large: large,
            medium: medium,
            small: small,
            portrait: portrait,
            landscape: landscape,
            tiny: tiny);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
