import 'package:base_arch_example/app/core/entity_base.dart';

abstract class ModelBase {
  ModelBase.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
  EntityBase toEntity();
}
