import 'package:great_tafseers/core/error/exception.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';

abstract class PlayPageRemoteDataSource{
  Future<PlayPage> choosePlay(String selected,bool nextPage,bool repetition);
}
class PlayPageRemoteDataSourceImpl implements PlayPageRemoteDataSource{
  @override
  Future<PlayPage> choosePlay(String selected, bool nextPage, bool repetition) {

    throw UnimplementedError();
  }


}