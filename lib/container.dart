import 'package:flutter/material.dart';
import 'package:tast2_part2edit/contac_screen_edit.dart';
class ContainerItem extends StatelessWidget {
 bool isVisible;
 String name ;
 String phone ;
 Function? deletItem;
 ContainerItem( {this.isVisible=false,this.name='',this.phone='',this.deletItem});
  @override
  Widget build(BuildContext context) {
    return Visibility(visible: isVisible,
      child: Container(
        margin:  EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 10,bottom: 15,right: 20,left: 20),
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.15,
        decoration: BoxDecoration(

            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            )),
        //width: 350,
        //height: 10,
        child: Row(
          children:[ Column(
            children: [
              Text('Name: $name',style: TextStyle(fontWeight:
              FontWeight.bold,fontSize: 20),),

              Text('Phone:$phone',style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),),
            ],),
            Spacer(),
           IconButton(
             onPressed: (){
               deletItem;
               print('delet');
             }

             ,
             icon:Icon(Icons.delete_forever,color:Colors.red,),
            ),
        ],),)
    );
  }
}
