import 'package:flutter/material.dart';
import '../models/fact.dart';

class FactCard extends StatelessWidget {
  final Fact fact;

  const FactCard({super.key, required this.fact});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                fact.imagePath,
                height: 220,
                width: double.infinity,
                fit: BoxFit.contain, 
              ),
            ),
            const SizedBox(height: 16),
            Chip(
              label: Text(
                fact.category,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              backgroundColor: const Color(0xFF1E3C72),
            ),
            const SizedBox(height: 16),
            Text(
              fact.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                height: 1.4,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}