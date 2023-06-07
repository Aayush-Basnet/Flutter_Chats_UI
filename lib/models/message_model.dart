import 'package:chats/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isliked;
  bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isliked,
    required this.unread,
  });
}

// You- current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/a1.JPG',
);

//USERS
final User grey = User(
  id: 1,
  name: 'Grey',
  imageUrl: 'assets/images/a2.JPG',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/a3.JPG',
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/a4.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/a5.jpg',
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'assets/images/a6.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/a7.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/a8.jpg',
);

// favorite contacts
List<User> favorites = [sam, steven, olivia, john, grey];

//Example chats on homescreen
List<Message> chats = [
  Message(
    sender: james,
    time: '5:50 PM',
    text: 'Hey, How\'s it going? What did you do today?',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:50 PM',
    text: 'Just walked my dogs.',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '7:50 AM',
    text: 'What\s about today?',
    isliked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '12:23 PM',
    text: 'All good',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '6:45 PM',
    text: 'Hey, How\'s it going? What did you do today?',
    isliked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '9:24 PM',
    text: 'It was nice meeting you.',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: grey,
    time: '10:18 AM',
    text: 'It was nice meeting you.',
    isliked: false,
    unread: false,
  ),
];

//Example Messages in Chat Screen
List<Message> messages = [
  Message(
    sender: james,
    time: '8:50 PM',
    text: 'Hey, How\'s it going? What did you do today?',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:18 PM',
    text: 'Just finished the project.',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:50 PM',
    text: 'Doin something?',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '1:50 PM',
    text: 'What\s about today?',
    isliked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '12:24 PM',
    text: 'It was nice meeting you too.',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '10:18 AM',
    text: 'It was nice meeting you.',
    isliked: true,
    unread: true,
  ),
];
