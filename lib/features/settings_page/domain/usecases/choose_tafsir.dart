
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class ChooseTafsir implements UseCase<SettingsPage,ChooseTafsirParams>{
  final SettingsPageRepository repository;

  ChooseTafsir({required this.repository});

  @override
  Future<Either<Failure, SettingsPage>> call(ChooseTafsirParams params ) async{
    return await repository.chooseTafsir(params.tafsir);
  }

}

class ChooseTafsirParams extends Equatable{
  final String tafsir;

  ChooseTafsirParams({required this.tafsir});
  @override
  List<Object?> get props => [tafsir];
}