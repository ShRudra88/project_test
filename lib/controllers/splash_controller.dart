import 'package:get/get.dart';
import 'package:project_test/models/splash_model.dart';

class SplashController extends GetxController {
  var currentIndex = 0.obs;

  List<SplashModel> splashData = [
    SplashModel(
      title: 'Wallet Security',
      description: 'Learn how Fin Track keeps your financial data safe with robust security measures, ensuring peace of mind as you manage your money.',
      image: 'assets/images/wallet_security.png',
    ),
    SplashModel(
      title: 'Easy Transfer',
      description: 'Discover how Fin Track simplifies transferring funds between accounts or making payments, making financial transactions a breeze.',
      image: 'assets/images/easy_transfer.png',
    ),
    SplashModel(
      title: 'Tailored Budgeting',
      description: 'Discover how Fin Track simplifies transferring funds between accounts or making payments, making financial transactions a breeze.',
      image: 'assets/images/tailored_budgeting.png',
    ),
  ];

  void nextPage() {
    if (currentIndex < splashData.length - 1) {
      currentIndex++;
    } else {
      Get.offAllNamed('/sign_in');
    }
  }

  void skip() {
    Get.offAllNamed('/sign_in');
  }
}
