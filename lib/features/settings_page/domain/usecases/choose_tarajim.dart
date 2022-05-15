import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class ChooseTarajim implements UseCase<SettingsPage,ChooseTarajimParams>{
  final SettingsPageRepository repository;

  ChooseTarajim({required this.repository});

  @override
  Future<Either<Failure, SettingsPage>> call(ChooseTarajimParams params) async{
    return await repository.chooseTarajim(params.language,params.tarajim);
  }

}

class ChooseTarajimParams extends Equatable{
  final String language;
  final String tarajim;

  ChooseTarajimParams({required this.language,required this.tarajim});
  @override
  List<Object?> get props => [];
}