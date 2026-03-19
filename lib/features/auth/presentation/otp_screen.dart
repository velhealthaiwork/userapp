import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OTP')),
      body: Center(
        child: ElevatedButton(onPressed: () => context.go('/home'), child: const Text('Verify')),
      ),
    );
  }
}
