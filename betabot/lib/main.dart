import 'package:betabot/pages/boton_emergencia.dart';
import 'package:betabot/pages/calendario.dart';
import 'package:betabot/pages/chatbot.dart';
import 'package:betabot/pages/chatbot_receta.dart';
import 'package:betabot/pages/home.dart';
import 'package:betabot/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: const Locale('es', 'ES'),  
      supportedLocales: const [
        Locale('en', 'US'),  
        Locale('es', 'ES'),  

      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,  
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
        routes: {
        'login': (_) => const Login(),
        'home': (_) => const Home(),
        'chatbot': (_) => const Chatbot(),
        'calendario': (_) => const Calendario(),
        'boton_emergen': (_) => const BotonEmergencia(),
        'chatbot_receta': (_) => const ChatbotReceta(),
      },
    );
  }
}
