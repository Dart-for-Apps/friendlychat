import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animationController});
  final String text;
  final String _name = "wurikiji";
  final AnimationController animationController; 
  @override
  Widget build (BuildContext context) {
    return new SizeTransition (
      sizeFactor: new CurvedAnimation(
        parent: animationController.view, 
        curve: Curves.easeOut
      ),
      axisAlignment: 0.0,
      child: new Container (
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        // 아바타 1칸, 이름 및 채팅 1칸 
        child: new Row( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(child: new Text(_name[0])),
            ),
            new Column(
              // 이름 한줄, 채팅 한줄
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_name, style: Theme.of(context).textTheme.subhead),
                new Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text(text),
                )
              ],
            )
          ],
        )
      )
    );
  }
}