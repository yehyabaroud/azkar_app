import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/launsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
      ],
      locale: const Locale('ar'),
      // home: LaunchScreen(),
      initialRoute: '/launsh_screen',
      routes: {
        '/launsh_screen': (context) => const LaunchScreen(),
        '/home_screen': (context) => const HomeScreen()
      },
    );
  }
}
