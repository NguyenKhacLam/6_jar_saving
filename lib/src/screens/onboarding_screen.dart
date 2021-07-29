import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:six_jars_saving/src/const/colors.dart' as COLOR;
import '../controllers/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  final _controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 20,
              right: 20,
              child: TextButton(
                onPressed: () {
                  //  Skip onboarding screen
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: COLOR.PRIMARY_COLOR,
                  ),
                ),
              ),
            ),
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          _controller.onboardingPages[index].imageAsset,
                          width: 200,
                          height: 200,
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Text(
                          _controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Text(
                            _controller.onboardingPages[index].description,
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
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: EdgeInsets.all(4.0),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: _controller.selectedPageIndex == index
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
                  _controller.forwardAction();
                },
                child: Obx(() {
                  return Text(_controller.isLastPage ? 'Start' : 'Next');
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
