import 'package:base_arch_example/app/modules/auth/presenter/pages/auth_page.dart';
import 'package:base_arch_example/app/modules/auth/presenter/pages/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/register_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const AuthPage()),
    ChildRoute('/login', child: (_, __) => const LoginPage()),
    ChildRoute('/register', child: (_, __) => const RegisterPage()),
  ];
}
