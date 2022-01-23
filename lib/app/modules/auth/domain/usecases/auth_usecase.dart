import 'package:base_arch_example/app/core/errors/failures.dart';
import 'package:base_arch_example/app/core/usecase_interface.dart';
import 'package:base_arch_example/app/modules/auth/domain/entities/logged_user_entity.dart';
import 'package:base_arch_example/app/modules/auth/domain/repositories/auth_repository_interface.dart';
import 'package:base_arch_example/app/modules/auth/domain/usecases/parameters/credential_parameters.dart';
import 'package:dartz/dartz.dart';

class AuthUsecase implements IUsecase<CredentialParams, LoggedUserEntity> {
  final IAuthRepository repository;

  AuthUsecase(this.repository);

  @override
  Future<Either<Failure, LoggedUserEntity>> call(
      CredentialParams params) async {
    if (params.email.isEmpty) {
      return Left(EmptyParamFailure());
    }
    return await repository.authUser(params);
  }
}
