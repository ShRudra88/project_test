import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ForgotPasswordController {
  void resetPassword(String email) {
    Get.toNamed('/create_new_password');
  }
}
