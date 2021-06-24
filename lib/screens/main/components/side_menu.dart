import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioapp/constants.dart';
import 'package:portfolioapp/screens/main/components/more_info.dart';

import 'package:portfolioapp/screens/main/components/skills.dart';
import 'package:portfolioapp/screens/main/components/social_buttons.dart';
import 'package:portfolioapp/screens/main/components/summary.dart';

import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  MoreInfoText(
                    title: 'Residence',
                    text: 'Perú',
                  ),
                  MoreInfoText(
                    title: 'City',
                    text: 'Arequipa',
                  ),
                  MoreInfoText(
                    title: 'Phone Number',
                    text: '+51 993 728 591',
                  ),
                  MoreInfoText(
                    title: 'Email',
                    text: 'kmmgcg@gmail.com',
                  ),
                  Summary(
                    titleSummary: 'Summary',
                    textSummary:
                        'Graduated from the Systems Engineering career at the "Católica de Santa Maria" University in Arequipa - Peru, under the Software Engineering branch. I have worked in the development of multiple mobile and web applications for about 2 years. I consider myself a self-taught, orderly, assertive person eager to learn more every day, accustomed to teamwork and under pressure.',
                  ),
                  SizedBox(height: defaultPadding),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'Download CV',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                          SvgPicture.asset('assets/icons/download.svg')
                        ],
                      ),
                    ),
                  ),
                  SocialButtons(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
