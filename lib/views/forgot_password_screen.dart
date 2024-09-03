import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_test/views/helper_widget/custom_button.dart';
import 'package:project_test/views/helper_widget/custom_textfield.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final ForgotPasswordController controller = ForgotPasswordController();
  final TextEditingController emailController = TextEditingController();

  ForgotPasswordScreen({super.key});

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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Center(
                child: Text(
                  'Recover your password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 60), // Space between text and text field


              CustomTextField(
                label: 'Email Address',
                hint: 'Enter Email Address',
                controller: emailController,
                icon: const Icon(Icons.email),
                isSecureText: false,
              ),
              const SizedBox(height: 30),

              CustomButton(
                text: 'Continue',
                onTap: () {
                  controller.resetPassword(emailController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
