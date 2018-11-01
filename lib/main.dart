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
  // text field 와 연계하여, 매 텍스트 업데이트 마다
  // 업데이트 된 텍스트와 선택된 텍스트를 조정함. 초기값도 설정 가능
  final TextEditingController _textController = new TextEditingController();
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendlychat"),
      ),
      body: _buildTextComposer(),
    );
  }

  Widget _buildTextComposer() {
    // 새로운 위젯을 생성하되 8.0 dp 마진을 사용
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      // 같은 열에 텍스트 필드와 send 버튼을 위치시킨다.
      child: new Row(
        // 한 row에 들어갈 widget들을 배열로 정의 한다.
        children: <Widget>[
          // 다른 widget이 쓰고 남은 크기를 재사용 하도록 Flexible 위젯으로 만든다
          new Flexible(
            child: new TextField(
              controller: _textController, // text 변화 받아 들일 컨트롤러
              onSubmitted: _handleSubmitted, // 엔터/전송 했을 때 처리할 메소드
              decoration: new InputDecoration.collapsed( hintText: "Send a message")
            ),
          ),
          // 아이콘 이미지에 맞는 크기를 갖도록 Container 사용 
          new Container(
            margin: new EdgeInsets.symmetric(horizontal: 4.0),
            child: new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text)
            )
          )
        ]
      )
    );
  }
  void _handleSubmitted(String text) {
    _textController.clear();
  }
}