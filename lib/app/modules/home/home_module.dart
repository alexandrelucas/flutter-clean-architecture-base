import 'package:base_arch_example/app/modules/home/presenter/pages/home_page.dart';
import 'package:base_arch_example/app/modules/home/presenter/pages/splash_screen.dart';
import 'package:base_arch_example/app/shared/guards/authentication_guard.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/splash', child: (_, __) => const SplashScreenPage()),
    ChildRoute(
      '/',
      child: (_, __) => const HomePage(),
      guards: [
        AuthenticationGuard(),
      ],
    ),
  ];
}
