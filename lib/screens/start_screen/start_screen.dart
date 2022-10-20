import 'dart:async';

import 'package:after_layout/after_layout.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../modules/router.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with AfterLayoutMixin<StartScreen> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF000000),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Add Songs'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(text: 'Recent'),
            Tab(text: 'Local'),
            Tab(text: 'Favorites'),
          ]),
        ),
        backgroundColor: const Color(0xFF000000),
        body: const TabBarView(
          children: [
            Center(
              child: Text('1'),
            ),
            Center(
              child: Text('2'),
            ),
            Center(
              child: Text('3'),
          )
        ],
      )
    );
  }

  @override
  Future<FutureOr<void>> afterFirstLayout(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
    Modular.to.pushNamedAndRemoveUntil(
        AppRouter.fromModule().login, (p0) => false,
        arguments: {"id": 3});
  }
}
