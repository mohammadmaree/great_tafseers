
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class ChooseReader implements UseCase<SettingsPage,ChooseReaderParams>{
  final SettingsPageRepository repository;

  ChooseReader({required this.repository});

  @override
  Future<Either<Failure, SettingsPage>> call(ChooseReaderParams params ) async{
    return await repository.chooseReader(params.reader);
  }

}


class ChooseReaderParams extends Equatable{
  final String reader;

  ChooseReaderParams({required this.reader});
  @override
  List<Object?> get props => [reader];
}
