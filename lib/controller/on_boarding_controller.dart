import 'package:clipping_path/constants/constants.dart';
import 'package:clipping_path/models/on_boarding_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  var selectedPage = 0.obs;
  var pageController = PageController();
  forwardAction() {
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnBoardingMOdel> onBoardingPages = [
    OnBoardingMOdel(
        imageAsset: Images.cook,
        title: 'Create Your Own Game',
        description: 'The quick brown fox jumps quickly over the lazy dog.'),
    OnBoardingMOdel(
        imageAsset: Images.deliver,
        title: 'Challenge your Friends',
        description:
            'Say something new, i have nothing left, i cant face the dark without you.'),
    OnBoardingMOdel(
        imageAsset: Images.order,
        title: 'Watch Leaderboard',
        description: 'iNiLabs is the best software company in dhaka.'),
  ];
}
