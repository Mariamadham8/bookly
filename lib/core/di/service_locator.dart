

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_implemntation.dart';
import '../networking/api_services.dart';

final getit = GetIt.instance;


void setupServiceLocator() {

  getit.registerSingleton<ApiServices>(ApiServices(
      Dio()
  ),);

  // Register your services and dependencies here
  getit.registerSingleton<HomeRepImplemintation>(HomeRepImplemintation(
      apiServices:getit.get(),
  )
  );
}