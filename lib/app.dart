import 'package:flutter/material.dart';
import 'package:todoapp/feature/homepage/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            (context) => MaterialPageRoute(
                  builder: (context) => const HomePageScreen(),
                  settings: settings,
                );
        }
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: const HomePageScreen(),
    );
  }
}
