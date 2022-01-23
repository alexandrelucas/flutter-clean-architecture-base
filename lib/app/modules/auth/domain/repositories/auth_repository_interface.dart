import 'package:base_arch_example/app/core/errors/failures.dart';
import 'package:base_arch_example/app/modules/auth/domain/entities/logged_user_entity.dart';
import 'package:base_arch_example/app/modules/auth/domain/usecases/parameters/credential_parameters.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, LoggedUserEntity>> authUser(CredentialParams params);
}
