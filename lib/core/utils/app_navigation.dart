import 'package:flutter/material.dart';

extension NavigationApp on BuildContext {
  push(route) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => route));
  }

  pop() {
    Navigator.pop(this);
  }

  pushreplacment(routs) {
    Navigator.pushReplacement(
        this, MaterialPageRoute(builder: (context) => routs));
  }
}
