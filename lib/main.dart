
import 'package:flutter/material.dart';
import 'package:flutter_lab_music_app/screens/application.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'environment.dart';
import 'modules/app_module.dart';

Future<void> main() async {
  Environment.setup();
  runApp(
    ModularApp(
      module: AppModule(),
      child: const Application(),
    ),
  );
}

