import 'package:flutter/material.dart';
import 'widgets/fact_screen.dart';

void main() {
  runApp(const FactsApp());
}

class FactsApp extends StatelessWidget {
  const FactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Карточки с фактами',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E3C72)),
      ),
      home: const FactScreen(),
    );
  }
}