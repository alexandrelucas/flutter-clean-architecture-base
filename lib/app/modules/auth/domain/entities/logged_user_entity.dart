import 'package:base_arch_example/app/core/entity_base.dart';

class LoggedUserEntity extends EntityBase {
  final String email;
  final String password;
  LoggedUserEntity({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
