import 'package:flutter/material.dart';
import '../../../page/home_page/home_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prayer times",
      theme: ThemeData(
        useMaterial3: true,
      ),
     home: const HomePage(),
    );
  }
}
