import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/List/tasks.dart';
import 'package:todoapp/profiledata/profile.dart';
import 'package:todoapp/profiledata/profileData.dart';
import 'package:todoapp/sign%20in.dart';

import 'List/task.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navBarIndex = 0;

  addTask(String input) {
    Tasks.myTasks.add(input);
    print(Tasks.myTasks);
    setState(() {});
  }

  addTitle(String input) {
    Tasks.myTitles.add(input);
    print(Tasks.myTitles);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyWidgets = [
      Center(
        child: ListView.builder(
            itemCount: Tasks.myTasks.length,
            itemBuilder: (context, i) => Task(
                  index: i,
                )),
      ),
      Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/photo 4.jpg',
                    width: 160, height: 160, fit: BoxFit.fill),
                Image.asset('assets/photo 6.jpg',
                    width: 160, height: 160, fit: BoxFit.fill),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.input,
                    color: Colors.green,
                  ),
                  hintText: 'Add Title ',
                ),
                onSubmitted: (input) => addTitle(input),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.input,
                    color: Colors.green,
                  ),
                  hintText: 'Add Task ',
                ),
                onSubmitted: (input) => addTask(input),
              ),
            ),
          ],
        ),
      )),
      Center(
        child: Profile(),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: bodyWidgets[navBarIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          iconSize: 30.0,
          onTap: (index) {
            setState(() {
              navBarIndex = index;
            });
          },
          selectedItemColor: Colors.white,
          currentIndex: navBarIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'My Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 270.0,
                color: Colors.green[100],
                child: Center(
                  child: Container(
                    child: Column(children: [
                      SizedBox(height: 65.0),
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/photo 3.jpg'),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        ProfileData.userName,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        ProfileData.userEmail,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Profile',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Profile()));
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications_none_outlined),
                      title: Text(
                        'Notifications',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        'Setting',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text(
                        'Log out',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new SignIn()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 70.0,
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'To Do List',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
