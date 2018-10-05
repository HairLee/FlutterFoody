import 'package:flutter/material.dart';




class MessagePage extends StatefulWidget {



  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ListView.builder(itemCount:20,itemBuilder: (context, int index){

        var itemColor = Colors.white;
        if(index%2 == 0){
          itemColor = Colors.amberAccent;
        } else {
          itemColor = Colors.blue;
        }

        return Padding(padding: EdgeInsets.all(10.0),
            child: Container(

                color: itemColor,
                child:Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Name"),
                        Text("Age")
                      ],

                    ),
                    Expanded(
                      child: Container(

                        color: Colors.black12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Text("Ahihi"),
                            Text("Ahehe")
                          ],

                        ),


                      ),


                    ),
                    Column(
                      children: <Widget>[
                        Text("Alibaba"),
                        Text("Lazada")
                      ],

                    )





                  ],


                )));
      }),
    );
  }
}


