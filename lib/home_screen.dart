
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minecraft Mods',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_outline),
          ),
        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.extension,
                size: 75,
                color: Color(0xFF39D353),
              ),

              const SizedBox(height: 20),

              const Text(
                'مرحباً بك',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'منصة استكشاف مودات وحزم Minecraft Java',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 25),

              const CircularProgressIndicator(
                color: Color(0xFF39D353),
              ),

              const SizedBox(height: 12),

              const Text(
                'تم تجهيز التطبيق',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
