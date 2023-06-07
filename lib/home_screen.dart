import 'package:chats/widgets/category_selector.dart';
import 'package:chats/widgets/favorite_contants.dart';
import 'package:chats/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        /* leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
        ),*/
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        elevation: 0.1,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_rounded),
            iconSize: 28,
          ),
          IconButton(
            onPressed: () {
              TextFormField();
            },
            icon: Icon(Icons.search),
            iconSize: 28,
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                "Aayush Basnet",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("aayushbasnetofficial@gmail.com"),
              currentAccountPicture: CircleAvatar(
                maxRadius: 12,
                backgroundColor: Colors.white,
                //backgroundImage:("assets/images/a1.JPG"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.settings,
                    size: 28,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              size: 24,
            ),
            title: Text(
              "Message",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              print("message");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              size: 24,
            ),
            title: Text(
              "Friends",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              print("Find friends");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.notification_add,
              size: 24,
            ),
            title: Text(
              "Notification",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              print("Notification");
            },
            trailing: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: CircleAvatar(
                    radius: 10,
                    child: Text("1"),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add_circle,
              size: 24,
            ),
            title: Text(
              "Accounts",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              print("Switch Account");
            },
          ),
          ListTile(
            title: Text('Report'),
            subtitle: Text('Report Item'),
            leading: Icon(Icons.report),
            onTap: () {
              print("Report pressed");
            },
          ),
          ListTile(
            title: Text(
              'Sign out',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Log out'),
            leading: Icon(Icons.logout),
            onTap: () {
              print("Logged out");
            },
          ),
          ListTile(
            title: Text(
              'Help',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.help),
            onTap: () {
              print("Help");
            },
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 246, 240, 240),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
