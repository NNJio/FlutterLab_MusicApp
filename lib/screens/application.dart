import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Auth"),
      //   ),
      // ),
    );
  }
}
