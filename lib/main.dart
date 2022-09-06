import 'package:casino_app/models/history.dart';
import 'package:flutter/material.dart';
import 'package:casino_app/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'models/casino_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Casino()),
        ChangeNotifierProvider(create: (context) => History()),
      ],
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
