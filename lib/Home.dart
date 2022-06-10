//'Arisya Dzahier 1919340
import 'package:flutter/material.dart';
import 'gridone.dart' as gridone;
import 'gridtwo.dart' as gridtwo;

class Home extends StatefulWidget {
  @override
 _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  
 late TabController controller;

 @override
  void initState() {
    controller=new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: new Text("My Home"),
        backgroundColor: Color.fromARGB(255, 5, 82, 145),
        bottom: new TabBar(
          controller: controller,
          indicatorWeight: 5.0,
          indicatorColor: Colors.blueGrey,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.bed),),

          ],
        ),
      ),


    body: new TabBarView(
      controller: controller,
      children: <Widget>[

        new gridone.GridLayout(),
        new gridtwo.GridRoom(),

      ],
    ),
    );
  }
}