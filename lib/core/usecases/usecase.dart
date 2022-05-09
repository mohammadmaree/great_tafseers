import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class Params extends Equatable{
  final int number;

  Params({required this.number});
  @override
  List<Object?> get props => [];
}

class NoParams extends Equatable{
  @override
  List<Object?> get props => [];
}