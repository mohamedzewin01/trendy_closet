import 'package:injectable/injectable.dart';
import 'package:trendy_closet/features/home/domain/repo/home_repo.dart';


@injectable
class HomeUseCase {
  final HomeRepo _homeRepo;

  HomeUseCase(this._homeRepo);


}
