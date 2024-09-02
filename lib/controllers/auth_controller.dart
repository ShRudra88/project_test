import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  var email = ''.obs;
  var password = ''.obs;
  var name = ''.obs;
  var otp = ''.obs;

  void signIn() {
    Get.toNamed('/home'); // auth verify korte hbe // just test korar jnne sign in kora hoise
  }

  void signUp() {
    Get.toNamed('/enter_otp');
  }

  void verifyOtp() {
    Get.toNamed('/enter_otp');
  }

  void resendOtp() {
    // otp abar pathabe
  }
}
