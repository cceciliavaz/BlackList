import 'package:best_flutter_ui_templates/introduction_animation/introduction_animation_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/introduction_animation/Errei-e-agora.png',
      navigateScreen: IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/introduction_animation.png',
      navigateScreen: IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/PRIMEIRO_DEPLOY.png',
      navigateScreen: IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/SCRUM-MEU-DE-TODO-DIA.png',
      navigateScreen: IntroductionAnimationScreen(),
    ),
  ];
}
