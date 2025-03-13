
import 'package:flutter/material.dart';

extension Navigate on BuildContext{
  push(Widget newScreen)=> Navigator.push(this, MaterialPageRoute(builder:(_)=>newScreen ));
}