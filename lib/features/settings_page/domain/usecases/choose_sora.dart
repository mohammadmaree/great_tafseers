import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/home_page/domain/usecases/change_page_view_index.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class ChooseSora implements UseCase<SettingsPage,ChooseSoraParams>{
  final SettingsPageRepository repository;

  ChooseSora(this.repository);

  @override
  Future<Either<Failure, SettingsPage>> call(ChooseSoraParams params ) async{
    return await repository.chooseSora(params.sora);
  }

}

class ChooseSoraParams extends Equatable{
  final String sora;

  ChooseSoraParams({required this.sora});
  @override
  List<Object?> get props => [sora];
}