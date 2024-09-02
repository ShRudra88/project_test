import 'package:flutter/material.dart';
import '../controllers/verification_controller.dart';

class VerificationScreen extends StatelessWidget {
  final VerificationController controller = VerificationController();

  VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Verified!'),
            ElevatedButton(
              onPressed: () {
                controller.completeAccount();
              },
              child: const Text('Complete your account'),
            ),
          ],
        ),
      ),
    );
  }
}
