import 'package:base_arch_example/app/modules/auth/presenter/auth_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(flex: 2, child: Container()),
          _appIcon(),
          Flexible(flex: 4, child: Container()),
          _signInButton(),
          _signUpButton(),
          Flexible(flex: 1, child: Container()),
        ],
      ),
    );
  }

  Widget _appIcon() {
    return const FlutterLogo(size: 124);
  }

  Widget _signInButton() {
    return ElevatedButton(
      onPressed: () {
        Modular.to.pushNamed('/auth/login');
      },
      child: const Text(AuthMessages.msgLogin),
    );
  }

  Widget _signUpButton() {
    return OutlinedButton(
      onPressed: () {
        Modular.to.pushNamed('/auth/register');
      },
      child: const Text(AuthMessages.msgRegister),
    );
  }
}
