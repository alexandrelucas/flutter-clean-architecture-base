import 'package:base_arch_example/app/core/errors/exceptions.dart';
import 'package:base_arch_example/app/modules/auth/data/datasources/auth_datasource_interface.dart';
import 'package:base_arch_example/app/modules/auth/domain/entities/logged_user_entity.dart';
import 'package:base_arch_example/app/core/errors/failures.dart';
import 'package:base_arch_example/app/modules/auth/domain/repositories/auth_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:base_arch_example/app/modules/auth/domain/usecases/parameters/credential_parameters.dart';

class AuthRepositoryImplementation implements IAuthRepository {
  final IAuthDatasource datasource;

  AuthRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, LoggedUserEntity>> authUser(
      CredentialParams params) async {
    try {
      final result = await datasource.login(params);
      return Right(result.toEntity());
    } on ServerException {
      Left(ServerFailure());
    } catch (e) {
      Left(ServerFailure());
    }
    // Só pra parar o erro null-safety
    return Left(ServerFailure());
  }
}
