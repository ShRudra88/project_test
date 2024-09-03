import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project_test/views/helper_widget/custom_textfield.dart';
import '../controllers/create_new_password_controller.dart';
import 'helper_widget/custom_button.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  final CreateNewPasswordController controller = CreateNewPasswordController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  CreateNewPasswordScreen({super.key});

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
              SizedBox(height: 40,),
              const Center(
                child: Text(
                  'Create New Password',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(child: Text('Enter your new password', style: TextStyle(fontSize: 20))),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'Password',
                hint: 'Enter your password',
                controller: TextEditingController(),
                icon: const Icon(Icons.lock_open_sharp),
                isSecureText: true,
              ),
              const SizedBox(height: 20),

              CustomTextField(
                label: 'Confirm Password',
                hint: 'Confirm your password',
                controller: TextEditingController(),
                icon: const Icon(Icons.lock_open_sharp),
                isSecureText: true,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Continue',
                onTap: () {
                  Get.offAllNamed('/sign_in');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
