import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

    var bng = ['Cat', 'Dog', 'Parrot','Girafe','Elephant','Zebra'];
  


  @override
  Widget build(BuildContext context) {

    //_getData();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pets'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Pets', style: new TextStyle(fontWeight: FontWeight.bold),),
              new Expanded(child: new ListView.builder(
                itemCount: bng.length,
                itemBuilder: (BuildContext context, int index){
                  return new Row(
                    children: <Widget>[
                      new Text(bng[index])
                    ],
                  );
                },  
              ))
            ],
          ),
        )
      ),
    );
  }
}