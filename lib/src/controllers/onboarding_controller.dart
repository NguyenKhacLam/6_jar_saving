import 'package:flutter/cupertino.dart';
import 'package:six_jars_saving/src/models/onboarding_info_models.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnBoardingController extends GetxController{
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex == onboardingPages.length - 1;

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'https://icons-for-free.com/iconfiles/png/512/money+pig+piggy+bank+saving+icon-1320191081608399353.png',
        'Begin Saving Your Money',
        'You journey will start now!'),
    OnboardingInfo(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz4bKCVW9HhTr9MW6cRXycg_8h4x_MGCyoO5xL9VVJqbPdGzr_cpy88ngpWSVw76OjfGA&usqp=CAU',
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
