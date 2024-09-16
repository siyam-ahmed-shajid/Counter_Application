import 'package:flutter/material.dart';

//Widget
class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>  _HomeScreenState();
}

//State Class for HomeScreen
class _HomeScreenState extends State <HomeScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: const Icon(Icons.home),
        actions: const [
          Icon(Icons.add)
        ],
      ),
      body: Center(
        child: Text(counter.toString(),style: const TextStyle(
          fontSize: 50,
        ),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              print(counter);
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),

          const SizedBox(width: 8),

          FloatingActionButton(
            onPressed: () {
              counter--;
              print(counter);
              setState(() {});
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}