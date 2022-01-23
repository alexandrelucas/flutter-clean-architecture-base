import 'dart:async';

import 'package:base_arch_example/app/redux/global.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthenticationGuard extends RouteGuard {
  AuthenticationGuard() : super(redirectTo: '/auth/');
  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) {
    return Global.isAuthenticated;
  }
}
