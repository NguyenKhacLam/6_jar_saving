import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_jars_saving/src/controllers/onboarding_controller.dart';
import 'package:six_jars_saving/src/const/colors.dart' as COLOR;

class OnBoardingScreen extends StatelessWidget {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedPageIndex,
                itemCount: controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          controller.onboardingPages[index].imageAsset,
                          width: 200,
                          height: 200,
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Text(
                          controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Text(
                            controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 30.0,
              left: 30.0,
              child: Row(
                children: List.generate(
                  controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: EdgeInsets.all(4.0),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: controller.selectedPageIndex == index
                            ? COLOR.PRIMARY_COLOR
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              right: 30.0,
              bottom: 30.0,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  controller.forwardAction();
                },
                child: Obx(() {
                    return Text(controller.isLastPage ? 'Start' : 'Next');
                  }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
