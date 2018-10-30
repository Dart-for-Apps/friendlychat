import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "Friendlychat",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Friendlychat"),
        ),
      ),
    ),
  );
}

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        title: "Friendlyhat",
        home: new ChatScreen(),
      );
    }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendlychat"),
      ),
    );
  }
}