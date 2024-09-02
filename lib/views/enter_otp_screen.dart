import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class EnterOTPScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

   EnterOTPScreen({super.key});

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
            // OTP Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(counterText: ''),
                    onChanged: (value) {
                      if (value.length == 1) {
                        authController.otp.value += value;
                      }
                    },
                  ),
                );
              }),
            ),

            const SizedBox(height: 20),

            // Verify Button
            ElevatedButton(
              onPressed: authController.verifyOtp,
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
              child: const Text('Verify'),
            ),

            // Resend Code Link
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
