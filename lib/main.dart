import 'package:notes/firebase_options.dart';
import 'package:notes/injection.dart';
import 'package:notes/src/comman/themes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'src/utilities/go_router_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: themeLight(context),
      darkTheme: themeDark(context),
      themeMode: ThemeMode.system,
      routerConfig: routerinit,
    );
  }
}
