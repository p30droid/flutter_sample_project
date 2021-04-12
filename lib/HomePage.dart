import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_appr/DashboardPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Hello"),
        backgroundColor:Colors.purple,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: ()=>debugPrint("Search"))
          ,
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: ()=>debugPrint("Add"))
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("Color With Jafari"),
                accountEmail: new Text("jj@gmail.com"),
                decoration : new BoxDecoration(
                  color: Colors.purple
                )
            ),

            new ListTile(


              title: new Text("First Page"),
              leading: new Icon(Icons.search,color: Colors.green,),
                trailing: new Icon(Icons.add,color: Colors.green,),

            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.add,color: Colors.green,),
            ),
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.cake,color: Colors.green,),
            ),
            new Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            new ListTile(
              title: new Text("Close"),
              leading: new Icon(Icons.close,color: Colors.red,),
              onTap: (){
                Navigator.of(context).pop();
              },

            ),
            new ListTile(
                title: new Text("Azari"),
                leading: new Icon(
                    Icons.ac_unit,
                    color: Colors.green)),



          ],

        ),


      ),

      body: (

      ElevatedButton(
        child: Text("Open"),
        onPressed: (){
          
          Navigator.push(context, MaterialPageRoute(builder:(context)=>
          DashboardPage()
          ));

        },

      )
      )
    );
  }
}
