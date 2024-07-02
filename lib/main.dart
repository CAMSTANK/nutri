import 'package:flutter/material.dart';
import 'package:nutri/telas/home.dart';
import 'package:nutri/telas/login1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nutri/telas/registro_google.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutriçao',
      initialRoute: 'login',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffcdacf3),
        ),
      ),
      routes: {
        'home': (context) => const Home(),
        'login': (context) => LoginDoUsuario(),
        'registro_google': (context) => RegistroGoogle(),
      },
    );
  }
}
