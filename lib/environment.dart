import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }

}



class Environment {
   static setup() {
     WidgetsFlutterBinding.ensureInitialized();
     HttpOverrides.global = _MyHttpOverrides();
     Provider.debugCheckInvalidValueType = null;


   }
}
