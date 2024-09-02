import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import 'sign_up_screen.dart';


class SignInScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

   SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('logo.png', height: 80),
            const SizedBox(height: 16),
            const Text('Finance Track with Fin Track', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: authController.signIn,
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
              child: const Text('Sign In'),
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
                  child: const Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
