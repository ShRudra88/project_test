import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_test/views/helper_widget/custom_button.dart';
import 'package:project_test/views/helper_widget/custom_textfield.dart';
import '../controllers/auth_controller.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    const SizedBox(width: 60,),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                const Text(
                  'Finance Track with Fin Track',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'Name',
                  hint: 'Enter Name',
                  controller: TextEditingController(),
                  icon: const Icon(Icons.person),
                  isSecureText: false,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Email Address',
                  hint: 'Enter Email Address',
                  controller: TextEditingController(),
                  icon: const Icon(Icons.email),
                  isSecureText: false,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Password',
                  hint: 'Enter Password',
                  controller: TextEditingController(),
                  icon: const Icon(Icons.lock),
                  isSecureText: true,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Confirm Password',
                  hint: 'Enter Confirm Password',
                  controller: TextEditingController(),
                  icon: const Icon(Icons.lock),
                  isSecureText: false,
                ),
                const SizedBox(height: 16),
                CustomButton(
                  text: 'Sign Up',
                  onTap: () {
                    Get.toNamed('/enter_otp');
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    TextButton(
                      onPressed: () {
                        Get.to(() => SignInScreen());
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
