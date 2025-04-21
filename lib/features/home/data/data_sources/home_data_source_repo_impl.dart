

import 'package:injectable/injectable.dart';
import 'package:trendy_closet/core/api/api_manager/api_manager.dart';

import 'home_data_source_repo.dart';



@Injectable(as: HomeDataSourceRepo)
class HomeDataSourceRepoImpl implements HomeDataSourceRepo{
  final ApiService apiService;

  HomeDataSourceRepoImpl(this.apiService);

  }



