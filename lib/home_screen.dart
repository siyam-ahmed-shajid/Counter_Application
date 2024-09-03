import 'package:flutter/material.dart';

//Widget
class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

//State Class for HomeScreen
class _HomeScreenState extends State <HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.add)
        ],
      ),
      body: Center(
        child: Text(counter.toString(),style: TextStyle(
          fontSize: 50,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}