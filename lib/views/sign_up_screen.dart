import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Name', prefixIcon: Icon(Icons.person)),
              onChanged: (value) => authController.name.value = value,
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(labelText: 'Email Address', prefixIcon: Icon(Icons.email)),
              onChanged: (value) => authController.email.value = value,
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              onChanged: (value) => authController.password.value = value,
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(labelText: 'Confirm Password', prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              onChanged: (value) => authController.password.value = value,
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: authController.signUp,
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
              child: const Text('Sign Up'),
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
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
