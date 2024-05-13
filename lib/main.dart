import 'package:docdoc_app/core/di/dependency_injection.dart';
import 'package:docdoc_app/core/helper/cache_helper.dart';
import 'package:docdoc_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await CacheHelper.init();
  setupGetIt();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
