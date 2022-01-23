import 'package:equatable/equatable.dart';

abstract class EntityBase extends Equatable {
  @override
  bool? get stringify => false;
}
