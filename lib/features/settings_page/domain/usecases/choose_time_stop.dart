import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class ChooseTimeStop implements UseCase<SettingsPage,ChooseTimeStopParams>{
  final SettingsPageRepository repository;

  ChooseTimeStop({required this.repository});

  @override
  Future<Either<Failure, SettingsPage>> call(ChooseTimeStopParams params ) async{
    return await repository.chooseTimeStop(params.soraStopTime);
  }

}

class ChooseTimeStopParams extends Equatable{
  final String soraStopTime;

  ChooseTimeStopParams({required this.soraStopTime});
  @override
  List<Object?> get props => [soraStopTime];
}