import 'package:flutter/material.dart';
import 'package:flutter_app_test/widgets/home/home_page.dart';

class LoginPageTest  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginPageTest> {
  @override
  Widget build(BuildContext context) {

    ScrollController _scrollController = new ScrollController();
    String username = "";

    return Scaffold(

        body: Container(
          color: Colors.white,
          child: ListView.builder(controller:_scrollController,itemCount:4,itemBuilder: (Context, int index){

            Container cell;

            var logoCell = Container(
              color: Colors.white,
              height: 160.0,
              width:160.0,
              child: new Icon(Icons.directions_car,size: 160.0,),
            );

            String hintText = "";

            if(index == 1){
              hintText = "";
            } else {
              hintText = "";
            }

            var  cellInput = Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child:  new Form(
                  child: TextField(
                    onChanged: (text){
                      username = text;
                      _scrollController.animateTo(
                        0.0,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    decoration: InputDecoration(
//                        icon: Icon(Icons.directions_car),
                      suffixIcon: Icon(Icons.person),
                      hintText:  hintText,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),

                    ),
                  )),
            );

            var cellBotton = Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child:SizedBox(width: double.infinity,child:ButtonTheme(
                    minWidth: 200.0,
                    height: 42.0,
                    child : RaisedButton(
                      color: Colors.blue,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text("Ahihi", style: TextStyle(color: Colors.white)),
                    )) ) ,
              ),
            );

            switch(index){
              case 0:
                cell = logoCell;
                break;
              case 1:
                cell = cellInput;
                break;
              case 2:
                cell = cellInput;
                break;
              case 3:
                cell = cellBotton;
                break;
            }
            return cell;
          }),
        ),
        bottomNavigationBar: Container(
          height: 45.0,
          color: Colors.white,
          child: Center(
            child: Text("", style: TextStyle(color: Colors.white, fontSize: 20.0),),
          ),
        ),
      );



  }
}
