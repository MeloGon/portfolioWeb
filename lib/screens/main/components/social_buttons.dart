import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding / 2),
      color: Color(0xff24242E),
      child: Row(
        children: [
          Spacer(),
          IconButton(
            onPressed: () async {
              await canLaunch(urlLinkedin)
                  ? await launch(urlLinkedin)
                  : throw 'Could not launch $urlLinkedin';
            },
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () async {
              await canLaunch(urlGithub)
                  ? await launch(urlGithub)
                  : throw 'Could not launch $urlGithub';
            },
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/twitter.svg'),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
