import 'package:flutter/material.dart';

class NavigationService {
  void navPush(BuildContext context, Widget route) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  }

  void navPop(BuildContext context) {
    Navigator.pop(context);
  }
}
