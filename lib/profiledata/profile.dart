import 'package:flutter/material.dart';
import 'package:todoapp/List/tasks.dart';
import 'package:todoapp/check.dart';
import 'package:todoapp/profiledata/profileData.dart';
import 'package:todoapp/sign%20in.dart';

class Profile extends StatelessWidget {
  int Num = Tasks.myTasks.length - Tasks.myChecks;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset('assets/photo 2.jpg',
                width: 300, height: 300, fit: BoxFit.fill),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.0),
                  Row(children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'No. Tasks you don\'t do : ',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Text(
                      Num.toString(),
                      style: TextStyle(fontSize: 20.0, color: Colors.green),
                    ),
                  ]),
                  SizedBox(height: 5.0),
                  Row(children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'No. Tasks you do : ',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Text(
                      Tasks.myChecks.toString(),
                      style: TextStyle(fontSize: 20.0, color: Colors.green),
                    ),
                  ]),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                          );
                        },
                        child: Container(
                          width: 150.0,
                          height: 60.0,
                          child: Center(
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Log Out  ',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
