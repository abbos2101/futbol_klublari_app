import 'package:futbol_klublari_app/data/db/data_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerSingleton(DataService());
}
