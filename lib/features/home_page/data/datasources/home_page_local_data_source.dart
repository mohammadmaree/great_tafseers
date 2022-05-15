
import 'package:great_tafseers/core/error/exception.dart';
import 'package:great_tafseers/core/resource/constens.dart';
import 'package:great_tafseers/features/home_page/data/models/home_page_model.dart';

abstract class HomePageLocalDataSource{
  Future<HomeModel> ChangePageViewIndex(int index);
}
class HomePageLocalDataSourceImpl implements HomePageLocalDataSource {
  @override
  Future<HomeModel> ChangePageViewIndex(index) {
    try {
      final data = informationOfPages[index];
      return Future.value(HomeModel.fromJson(data));
    } catch (e) {
      throw CacheException();
    }
  }
}