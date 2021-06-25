import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp/constants.dart';
import 'package:portfolioapp/screens/home/components/home_banner.dart';
import 'package:portfolioapp/screens/main/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPage(
      children: [HomeBanner()],
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          Text('I build '),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('Responsive web and mobile app',
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Productivity apps',
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Integration with firebase',
                speed: Duration(milliseconds: 60)),
          ]),
        ],
      ),
    );
  }
}
