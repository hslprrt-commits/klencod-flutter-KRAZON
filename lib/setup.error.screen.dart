
import 'package:flutter/material.dart';

class SetupErrorScreen extends StatelessWidget {
  final String error;

  const SetupErrorScreen({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.cloud_off,
                size: 65,
                color: Colors.redAccent,
              ),

              const SizedBox(height: 20),

              const Text(
                'تعذر تهيئة الاتصال',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'تحقق من إعدادات Supabase '
                'ومتغيرات البناء.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 15),

              SelectableText(
                error,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
