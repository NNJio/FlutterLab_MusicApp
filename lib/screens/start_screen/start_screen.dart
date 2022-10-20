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

class _StartScreenState extends State<StartScreen>  with AfterLayoutMixin<StartScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Screen'),
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }

  @override
  Future<FutureOr<void>> afterFirstLayout(BuildContext context) async {
   await Future.delayed(Duration(seconds: 1));
   Modular.to.pushNamedAndRemoveUntil(AppRouter.fromModule().login, (p0) => false,arguments: {"id" : 3});
  }
}
