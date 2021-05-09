import 'package:flutter/material.dart';
import 'package:todoapp/Home.dart';
import 'package:todoapp/List/tasks.dart';
import 'package:todoapp/profiledata/profileData.dart';

import '../check.dart';


class Task extends StatelessWidget {

  final int index;

  Task({
    this.index,
  });


  @override
  Widget build(BuildContext context) {
    return Container(


      height: 160.0,
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [

              Text(
                ' - ' +Tasks.myTitles[index] ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),

          SizedBox(height: 15,),

          Text(
            Tasks.myTasks[index],
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          Check(),
        ],
      ),
    );
  }
}
