import 'package:flutter/material.dart';
class ButtonName extends StatelessWidget {
  String text;
  Color color;
  Function onClick;
  ButtonName({required this.text, required this.color,required this.onClick});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(color: color
      ,height: 50,
      shape: RoundedRectangleBorder( borderRadius:BorderRadius.circular(30)),
      onPressed: (){
          onClick();
      }
      ,child: Text('$text'),);
  }
}
