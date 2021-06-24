import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.23,
            child: Container(
              color: Color(0xFF242430),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/fotoCv.png'),
                  ),
                  Spacer(),
                  Text(
                    'Kevyn Melo',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    'Flutter Developer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
