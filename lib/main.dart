import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_test/views/create_new_password_screen.dart';
import 'package:project_test/views/forgot_password_screen.dart';
import 'package:project_test/views/home_screen.dart';
import 'package:project_test/views/verification_screen.dart';
import 'views/splash_screen.dart';
import 'views/sign_in_screen.dart';
import 'views/sign_up_screen.dart';
import 'views/enter_otp_screen.dart';
import 'views/verify_otp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fin Track',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/enter_otp', page: () => EnterOTPScreen()),
        GetPage(name: '/create_new_password', page: () => CreateNewPasswordScreen()),
        GetPage(name: '/forgot_password', page: () => ForgotPasswordScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/sign_in', page: () => SignInScreen()),
        GetPage(name: '/sign_up', page: () => SignUpScreen()),
        GetPage(name: '/verification', page: () => VerificationScreen()),
        GetPage(name: '/verify_otp', page: () => VerifyOTPScreen()),
      ],
    );
  }
}
