import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class VerifyOTPScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  VerifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Enter OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "We have just sent you a 4 digit code via your email ${authController.email.value}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(authController.otp.value, style: const TextStyle(fontSize: 24, letterSpacing: 16))),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: authController.verifyOtp,
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
              child: const Text('Verify'),
            ),
            TextButton(
              onPressed: authController.resendOtp,
              child: const Text('Don’t receive code? Resend Code'),
            ),
          ],
        ),
      ),
    );
  }
}
