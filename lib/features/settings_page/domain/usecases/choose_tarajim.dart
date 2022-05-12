import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class ChooseTarajim implements UseCase<SettingsPage,Params>{
  final SettingsPageRepository repository;

  ChooseTarajim(this.repository);

  @override
  Future<Either<Failure, SettingsPage>> call(Params params ) async{
    return await repository.chooseTarajim(params.result.tarajim);
  }

}

class Params extends Equatable{
  final SettingsPage result;

  Params({required this.result});
  @override
  List<Object?> get props => [];
}