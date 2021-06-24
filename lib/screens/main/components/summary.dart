import 'package:flutter/material.dart';

import '../../../constants.dart';

class Summary extends StatelessWidget {
  const Summary({
    Key? key,
    this.textSummary,
    this.titleSummary,
  }) : super(key: key);

  final String? titleSummary;
  final String? textSummary;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(titleSummary.toString(),
              style: Theme.of(context).textTheme.subtitle2),
        ),
        Text(textSummary.toString(), style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
