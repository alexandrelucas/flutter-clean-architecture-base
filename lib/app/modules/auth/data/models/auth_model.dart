import 'package:base_arch_example/app/core/model_base.dart';
import 'package:base_arch_example/app/modules/auth/domain/entities/logged_user_entity.dart';

class AuthModel extends ModelBase {
  late final String email;
  late final String password;

  AuthModel.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    email = json['email'];
    password = json['password'];
  }

  @override
  Map<String, dynamic> toJson() => {};

  @override
  LoggedUserEntity toEntity() {
    return LoggedUserEntity(email: email, password: password);
  }
}
