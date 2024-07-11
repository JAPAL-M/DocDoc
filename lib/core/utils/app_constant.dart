import 'package:docdoc_app/core/helper/cache_helper.dart';

abstract class AppConstants {
  static String savedToken = CacheHelper.getData(key: 'token');
}
