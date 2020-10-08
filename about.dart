import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.yellow[700],
        ),
        body: Center(
          child: Column(children: <Widget>[
            Picture(),
            Name(),
            Website(),
            RowOne(),
            RowTwo(),
          ]),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 75,
        backgroundImage: NetworkImage(
            'https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/e95cb671566071.5bc98879d60cb.png'),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'LeBron James',
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 20,
        ),
      ),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class Website extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'KING',
        style: TextStyle(
          color: Colors.yellow[900],
          fontSize: 14,
        ),
      ),
    );
  }
}

class RowOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.yellow[700],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  Icon(
                    Icons.map,
                    size: 45,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    'LA Lakers',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                  )
                ]),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.yellow[700],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  Icon(
                    Icons.assignment,
                    size: 45,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    '30 Des 1984',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                  )
                ]),
              ),
            ),
          )
        ]);
  }
}

class RowTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.yellow[700],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 45,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    '3x NBA MVP',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                  )
                ]),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.yellow[700],
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  Icon(
                    Icons.straighten,
                    size: 45,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    '2.06 m',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                  )
                ]),
              ),
            ),
          )
        ]);
  }
}
