import 'package:get_it/get_it.dart';

import 'features/banners/banners_locator.dart';
import 'features/company/company_locator.dart';

final sl = GetIt.instance;

void init() {
  CompanyLocator.init(sl);
  BannersLocator.init(sl);
}