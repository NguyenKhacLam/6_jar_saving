import 'package:flutter/cupertino.dart';
import 'package:six_jars_saving/src/models/onboarding_info_models.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

import '../models/onboarding_info_models.dart';

class OnBoardingController extends GetxController{
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex == onboardingPages.length - 1;

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'assets/images/saving_money.png',
        'Begin Saving Your Money',
        'You journey will start now!'),
    OnboardingInfo(
        'assets/images/travel.png',
        'You cant do anything',
        'We can do whatever we want! Keep Going'),
  ];

  forwardAction(){
    if(isLastPage){
    //  Go Login Page
    }else{
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }
}
