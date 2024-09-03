import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_test/views/helper_widget/custom_button.dart';
import '../controllers/auth_controller.dart';

class EnterOTPScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

   EnterOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Get.back(),
              ),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'We have just sent you a 4 digit code via your email',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
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


              CustomButton(
                text: 'Verify',
                onTap: () {
                  Get.toNamed('/enter_otp');
                },
              ),

              // Resend Code Link
              TextButton(
                onPressed: authController.resendOtp,
                //child: const Text('Don’t receive code? Resend Code'),
                child: const Text('Don’t receive code? Resend Code',style: TextStyle(color: Colors.deepPurpleAccent)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
