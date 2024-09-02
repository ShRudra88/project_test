import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

   SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  controller.currentIndex.value = index;
                },
                itemCount: controller.splashItems.length,
                itemBuilder: (context, index) {
                  final item = controller.splashItems[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(item.imagePath, height: 200),
                      const SizedBox(height: 20),
                      Text(
                        item.title,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(
                          item.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: controller.skip,
                  child: const Text("Skip"),
                ),
                Row(
                  children: List.generate(controller.splashItems.length, (index) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentIndex.value == index ? Colors.blue : Colors.grey,
                      ),
                    );
                  }),
                ),
                ElevatedButton(
                  onPressed: controller.nextPage,
                  child: const Text("Next"),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
