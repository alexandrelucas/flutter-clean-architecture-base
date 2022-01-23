import 'package:base_arch_example/app/modules/auth/data/models/auth_model.dart';
import 'package:base_arch_example/app/modules/auth/domain/usecases/parameters/credential_parameters.dart';

abstract class IAuthDatasource {
  Future<AuthModel> login(CredentialParams params);
}
