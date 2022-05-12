import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';

abstract class PlayPageRemoteDataSource{
  Future<PlayPage> choosePlay(String selected);
}
class PlayPageRemoteDataSourceImpl implements PlayPageRemoteDataSource{
  @override
  Future<PlayPage> choosePlay(String selected) {
    throw UnimplementedError();
  }

}