import 'package:flutter/material.dart';
import 'package:tast2_part2edit/contac_screen_edit.dart';

void main() {
  runApp(MaterialApp(
  routes: {
    Contact.routeName:(_)=>Contact(),
  },
    initialRoute: Contact.routeName,
  ));
}

