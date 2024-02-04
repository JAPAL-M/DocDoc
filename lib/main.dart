import 'package:docdoc_app/core/di/dependency_injection.dart';
import 'package:docdoc_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
