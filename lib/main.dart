import 'package:flutter/material.dart';

void main() {
  runApp(
    new FriendlychatApp()
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

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ChatScreenState();
  }
}
class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendlychat"),
      ),
    );
  }
}