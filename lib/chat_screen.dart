import 'package:chats/models/message_model.dart';
import 'package:chats/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(top: 7.5, bottom: 7.5, left: 65)
          : EdgeInsets.only(
              top: 7.5,
              bottom: 7.5,
            ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: MediaQuery.of(context).size.width * 0.69,
      decoration: BoxDecoration(
        color: isMe
            ? Color.fromARGB(255, 236, 218, 232)
            : Color.fromARGB(255, 247, 235, 235),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14))
            : BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(
                fontSize: 11,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            message.text,
            style: TextStyle(
                fontSize: 14,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
          onPressed: () {},
          icon: message.isliked
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
          iconSize: 26.0,
          color: message.isliked
              ? Color.fromARGB(255, 247, 235, 235)
              : Colors.blueGrey,
        ),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      height: 60,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera),
            iconSize: 20,
            color: Colors.blueGrey,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.image),
            iconSize: 20,
            color: Colors.blueGrey,
          ),
          Expanded(
              child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {},
            decoration:
                InputDecoration.collapsed(hintText: "Send a message...."),
          )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            iconSize: 20,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            widget.user.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
              iconSize: 26.0,
              color: Colors.white,
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: ListView.builder(
                          reverse: true,
                          padding: EdgeInsets.only(top: 12),
                          itemCount: messages.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Message message = messages[index];
                            final bool isMe =
                                message.sender.id == currentUser.id;
                            return _buildMessage(message, isMe);
                          }),
                    )),
              ),
              _buildMessageComposer(),
            ],
          ),
        ));
  }
}
