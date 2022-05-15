
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class MySoras implements UseCase<SettingsPage,MySorasParams>{
  final SettingsPageRepository repository;

  MySoras({required this.repository});

  @override
  Future<Either<Failure, SettingsPage>> call(MySorasParams params ) async{
    return await repository.mySoras(params.mySoras);
  }

}

class MySorasParams extends Equatable{
  final List<String> mySoras;

  MySorasParams({required this.mySoras});
  @override
  List<Object?> get props => [];
}