import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Widget")),
      body: Container(
        child: Column(
          children: [
            catItem(),
            contactList(),
            subcatItem(),
            bottomList(),
          ],
        ),
      ),
    );
  }
}

class catItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(11),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
            itemCount: 10,
            scrollDirection: Axis.horizontal),
      ),
    );
  }
}

class contactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              title: Text("Name"),
              subtitle: Text("Mobile Number"),
              trailing: Icon(
                Icons.delete,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class subcatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.lightGreen,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.lightBlueAccent),
              ),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}

class bottomList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.purpleAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(crossAxisCount: 4, children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.lightBlueAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.lightBlueAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.lightBlueAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.lightBlueAccent),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
