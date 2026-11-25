import 'dart:math';
import 'package:flutter/material.dart';
import '../models/fact.dart';
import 'gradient_background.dart';
import 'fact_card.dart';

class FactScreen extends StatefulWidget {
  const FactScreen({super.key});

  @override
  State<FactScreen> createState() => _FactScreenState();
}

class _FactScreenState extends State<FactScreen> {
  final Random _random = Random();
  int _currentIndex = 0;

  void _nextFact() {
    setState(() {
      int next = _random.nextInt(facts.length);
      if (next == _currentIndex) {
        next = (next + 1) % facts.length;
      }
      _currentIndex = next;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Карточки с фактами',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              FactCard(fact: facts[_currentIndex]),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _nextFact,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF1E3C72),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Следующий факт'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}