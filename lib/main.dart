import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const FoodListApp());
}

class FoodListApp extends StatelessWidget {
  const FoodListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Labexam2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9FAFC),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
