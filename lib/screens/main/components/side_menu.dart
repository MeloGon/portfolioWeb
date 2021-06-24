import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolioapp/constants.dart';
import 'package:portfolioapp/screens/main/components/more_info.dart';
import 'package:portfolioapp/screens/main/components/skill_widget.dart';
import 'package:portfolioapp/screens/main/components/skills.dart';

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
                  Skills(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
