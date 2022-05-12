import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class ChooseTimeStop implements UseCase<SettingsPage,Params>{
  final SettingsPageRepository repository;

  ChooseTimeStop(this.repository);

  @override
  Future<Either<Failure, SettingsPage>> call(Params params ) async{
    return await repository.chooseTimeStop(params.result.soraStopTime);
  }

}

class Params extends Equatable{
  final SettingsPage result;

  Params({required this.result});
  @override
  List<Object?> get props => [];
}