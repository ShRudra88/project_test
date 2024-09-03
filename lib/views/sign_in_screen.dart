import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_test/views/helper_widget/custom_button.dart';
import 'package:project_test/views/helper_widget/custom_textfield.dart';
import '../controllers/auth_controller.dart';
import 'sign_up_screen.dart';


class SignInScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

   SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 200,width: 200,),

              const Text('Finance Track with Fin Track', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),

              CustomTextField(
                label: 'Email Address',
                hint: 'Enter Email Address',
                controller: TextEditingController(),
                icon: const Icon(Icons.lock_open_rounded),
                isSecureText: false,
              ),
              const SizedBox(height: 16),

              CustomTextField(
                label: 'Password',
                hint: 'Enter Password',
                controller: TextEditingController(),
                icon: const Icon(Icons.lock_open_rounded), // Pass an icon here
                isSecureText: true,
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (bool? value) {}),
                      const Text("Remember me"),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed('forgot_password');
                    },
                    child: const Text('Forgot Password?',style: TextStyle(color: Colors.deepPurpleAccent)),
                  ),

                ],
              ),

              // ElevatedButton(
              //   onPressed: authController.signIn,
              //   style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
              //   child: const Text('Sign In'),
              // ),
              CustomButton(
                text: 'Sign In',
                onTap: () {
                  Get.toNamed('/home');
                },
              ),

              const SizedBox(height: 16),

              const Text('-OR-', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.g_mobiledata, size: 40)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.facebook, size: 40)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.apple, size: 40)),
                ],
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account? "),
                  TextButton(
                    onPressed: () {
                      Get.to(() => SignUpScreen());
                    },
                    //child: const Text('Sign up'),
                    child: const Text('Sign up',style: TextStyle(color: Colors.deepPurpleAccent)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
