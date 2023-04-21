import 'package:flutter/material.dart';
import 'chat_message.dart';
import 'home_page.dart';

class chatScreen extends StatefulWidget {
  chatScreen({super.key});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  TextEditingController _t1 = TextEditingController();

  final List<chatMessage> _messages = <chatMessage>[];

  void _handleSubmitted(String text) {
    _t1.clear();
    chatMessage _message = chatMessage(text: text);
    setState(() {
      _messages.insert(0, _message);
    });
  }

  Widget _textComposer() {
    return IconTheme(
      data: IconThemeData(
        color: Colors.green,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
                controller: _t1,
                onSubmitted: _handleSubmitted,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_t1.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabahiHub"),
        actions: [
          MaterialButton(
            color: Colors.teal,
            splashColor: Colors.red,
            textColor: Colors.white,
            child: Text("calculator"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homepage(),
                ),
              );
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _textComposer(),
          ),
        ],
      ),
    );
  }
}
