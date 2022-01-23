import 'package:base_arch_example/app/modules/home/presenter/home_messages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Ciclos de vida e outras funções sempre antes da build
  // porque a build e seus filhos costumam crescer durante o desenvolvimento.

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text(HomeMessages.title),
    );
  }

  Widget _body() {
    return const Center(
      child: FlutterLogo(
        size: 250,
      ),
    );
  }
}
