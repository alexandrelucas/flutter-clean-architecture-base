import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'errors/failures.dart';

// Entrada -> Saida
abstract class IUsecase<Input, Output> {
  Future<Either<Failure, Output>> call(Input params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
