import 'package:base_arch_example/app/modules/auth/presenter/auth_messages.dart';
import 'package:base_arch_example/app/redux/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
      padding: const EdgeInsets.all(48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _appLogo(),
          const SizedBox(height: 60),
          _emailField(),
          const SizedBox(height: 16),
          _passwordField(),
          const SizedBox(height: 8),
          const SizedBox(height: 60),
          _submitButton(),
        ],
      ),
    );
  }

  Widget _appLogo() {
    return const Center(
        child: FlutterLogo(
      size: 48,
    ));
  }

  Widget _emailField() {
    return const SizedBox(
      height: 42,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: AuthMessages.msgEmail),
      ),
    );
  }

  Widget _passwordField() {
    return const SizedBox(
      height: 42,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: AuthMessages.msgPassword,
        ),
        obscureText: true,
      ),
    );
  }

  Widget _submitButton() {
    return ElevatedButton(
        onPressed: () {
          Global.isAuthenticated = true;
          Modular.to.navigate('/');
        },
        child: const Text(AuthMessages.msgPassword));
  }
}
