import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 900));
      Modular.to.navigate('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Center(
          child: FlutterLogo(
            size: 142,
          ),
        ),
        SizedBox(
          height: 64,
        ),
        SizedBox(
          child: CircularProgressIndicator(
            strokeWidth: 3.5,
          ),
          width: 32,
          height: 32,
        )
      ],
    );
  }
}
