import 'package:flutter/material.dart';
import 'package:portfolioapp/screens/main/components/skill_widget.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'Flutter',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'Java',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'SQL, MySql',
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'GIT',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'C#',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'JavaScript',
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'JavaScript',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'HTML, CSS3',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: SkillWidget(
                percentage: 0.8,
                label: 'HTML, CSS3',
              ),
            ),
          ],
        )
      ],
    );
  }
}
