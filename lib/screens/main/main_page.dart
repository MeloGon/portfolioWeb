import 'package:flutter/material.dart';
import 'package:portfolioapp/constants.dart';

import 'components/side_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //esto es para que el maximo de nuestra web sea de 1440 como se define
          //en constants
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              //7+2 = 9   2/9 = 0.22%
              Expanded(flex: 2, child: SideMenu()),
              //7+2 = 9   7/9 = 0.78%
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
