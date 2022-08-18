import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import '../models/photos_model/photo_list_model.dart';

part 'serializer.g.dart';

@SerializersFor([
  PhotoListModel,
  Photos,
  Src,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
