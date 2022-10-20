import 'package:flutter_modular/flutter_modular.dart';


import '../screens/home/home_screen.dart';
import '../screens/start_screen/start_screen.dart';
import 'router.dart';

class AppModule extends Module {
  final AppRouter appRouter = AppRouter();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        appRouter.startScreen,
        child: (context, args) => const StartScreen(),
      ),
      // ChildRoute(
      //   appRouter.login,
      //   child: (context, args) => ChangeNotifierProvider<LoginProvider>(
      //     create: (_)  => LoginProvider(),
      //     child: LoginScreen(),
      //   ),
      // ),
      ChildRoute(
        appRouter.home,
        child: (context, args) => const HomeScreen(),
      ),
    ];
  }
}

