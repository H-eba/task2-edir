import 'package:flutter/material.dart';
import 'package:tast2_part2edit/button.dart';
import 'package:tast2_part2edit/container.dart';
import 'package:tast2_part2edit/text_form1.dart';
class Contact  extends StatefulWidget {
  static String routeName='contact';

  @override
  State<Contact> createState() => _ContactState();
}
int counter=1;
class _ContactState extends State<Contact> {

  ContainerItem Item1=ContainerItem(isVisible: false,);

  ContainerItem Item2=ContainerItem(isVisible: false);

  ContainerItem Item3=ContainerItem(isVisible: false);
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  /// int counter=1;

  addItem(){
    if (counter==1){
      Item1 =ContainerItem(isVisible: true,
     // Item1.isVisible=true;
      name:namecontroller.text,
      phone:phonecontroller.text,
      );
      counter++;
      setState(() {
      print(counter);

      });
    }else if(counter==2){
      Item2 =ContainerItem(isVisible: true,
      name:namecontroller.text,
      phone:phonecontroller.text);
      counter++;
      setState(() { print(counter);

      });
    } else if(counter==3){
      Item3.isVisible=true;
       Item3.name=namecontroller.text;
       Item3. phone=phonecontroller.text;
      counter++;
      setState(() {
        print(counter);///4
      });
    }
  }
  deletItem(){
    if (counter==4){
      Item3 =ContainerItem(isVisible: false);
      // Item1.isVisible=true;
      counter--;
      setState(() {
        print(counter);
      });
    }else if(counter==3){
      Item2.isVisible=false;
      counter--;
      setState(() { print(counter);

      });
    } else if(counter==2){
      Item1.isVisible=false;
      counter--;
      setState(() {
        print(counter);///1
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Contact Screen'),
      ),
      body:
      Column(
        children: [

        TextForm1(hintText: 'Enter your name',icon: Icons.edit,controller: namecontroller,),
          TextForm1(hintText: 'Enter your phone',icon: Icons.call,controller: phonecontroller,),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          ButtonName(text: 'Add', color: Colors.red,onClick:addItem ,), //call  back fun
              SizedBox(width: 7,),
              ButtonName(text: 'delet', color: Colors.blueAccent,onClick: deletItem,)
          ],),
          Item1,
          Item2,
          Item3,

    ],),

    );



  }
}
