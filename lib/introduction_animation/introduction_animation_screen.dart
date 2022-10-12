import 'package:best_flutter_ui_templates/introduction_animation/components/story_two_view.dart';
import 'package:best_flutter_ui_templates/introduction_animation/components/story_four_view.dart';
import 'package:best_flutter_ui_templates/introduction_animation/components/story_three_view.dart';
import 'package:best_flutter_ui_templates/introduction_animation/components/story_one_view.dart';
import 'package:best_flutter_ui_templates/introduction_animation/components/story_view.dart';
import 'package:best_flutter_ui_templates/introduction_animation/components/top_back_skip_view.dart';
import 'package:best_flutter_ui_templates/introduction_animation/components/welcome_view.dart';
import 'package:flutter/material.dart';

import '../model/learned-lessons.dart';
import '../model/story.dart';

class IntroductionAnimationScreen extends StatefulWidget {
  final Story story;
  final List<LearnedLessons> learnedLessons_;

  const IntroductionAnimationScreen(
      {Key? key, required this.story, required this.learnedLessons_})
      : super(key: key);

  @override
  _IntroductionAnimationScreenState createState() =>
      _IntroductionAnimationScreenState();
}

class _IntroductionAnimationScreenState
    extends State<IntroductionAnimationScreen> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    _animationController?.animateTo(0.0);
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_animationController?.value);
    return Scaffold(
      backgroundColor: Color(0xFFF7EBE1),
      body: ClipRect(
        child: Stack(
          children: [
            StoryView(
              animationController: _animationController!,
              story: widget.story,
            ),
            StoryOneView(
                animationController: _animationController!,
                learnedLessons: widget.learnedLessons_[0]),
            StoryTwoView(
                animationController: _animationController!,
                learnedLessons: widget.learnedLessons_[1]),
            StoryThreeView(
                animationController: _animationController!,
                learnedLessons: widget.learnedLessons_[2]),
            WelcomeView(
              animationController: _animationController!,
            ),
            TopBackSkipView(
              onBackClick: _onBackClick,
              onSkipClick: _onSkipClick,
              animationController: _animationController!,
            ),
            CenterNextButton(
              animationController: _animationController!,
              onNextClick: _onNextClick,
            ),
          ],
        ),
      ),
    );
  }

  void _onSkipClick() {
    _animationController?.animateTo(0.8,
        duration: Duration(milliseconds: 1200));
  }

  void _onBackClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.0);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.2);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _animationController?.animateTo(0.4);
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      _animationController?.animateTo(0.6);
    } else if (_animationController!.value > 0.8 &&
        _animationController!.value <= 1.0) {
      _animationController?.animateTo(0.8);
    }
  }

  void _onNextClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.4);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.6);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _animationController?.animateTo(0.8);
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      _signUpClick();
    }
  }

  void _signUpClick() {
    Navigator.pop(context);
  }
}
