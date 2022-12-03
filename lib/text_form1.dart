import 'package:flutter/material.dart';
class TextForm1 extends StatelessWidget {
 String hintText;
 IconData icon;
 TextEditingController controller;
  late String name;
 TextForm1({required this.hintText, required this.icon,
   required this .controller});


  @override
  Widget build(BuildContext context) {
    return Padding( padding: EdgeInsets.only(top: 15),
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: (value){
          name=value;
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          suffixIcon: Icon(icon),
            hintText: '$hintText',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35)
            )

        ),


      ),
    );
  }
}
