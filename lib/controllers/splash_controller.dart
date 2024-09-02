import 'package:get/get.dart';
import '../models/splash_item.dart';

class SplashController extends GetxController {
  var currentIndex = 0.obs;

  final List<SplashItem> splashItems = [
    SplashItem(
      title: "Wallet Security",
      description: "Learn how Fin Track keeps your financial data safe with robust security measures, ensuring peace of mind as you manage your money.",
      imagePath: "assets/images/image1.png",
    ),
    SplashItem(
      title: "Easy Transfer",
      description: "Discover how Fin Track simplifies transferring funds between accounts or making payments, making financial transactions a breeze.",
      imagePath: "assets/images/image2.png",
    ),
    SplashItem(
      title: "Tailored Budgeting",
      description: "Discover how Fin Track simplifies transferring funds between accounts or making payments, making financial transactions a breeze.",
      imagePath: "assets/images/image3.png",
    ),
  ];

  void nextPage() {
    if (currentIndex.value < splashItems.length - 1) {
      currentIndex.value++;
    } else {
      Get.offAllNamed('/sign_in');
    }
  }

  void skip() {
    Get.offAllNamed('/sign_in');
  }
}
