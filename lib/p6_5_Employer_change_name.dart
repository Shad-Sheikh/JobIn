import 'package:dsc_jobin/p6_Employer_drawer.dart';
import 'package:flutter/material.dart';

class p6_5_Employer_change_name extends StatefulWidget {
  @override
  _p6_5_Employer_change_nameState createState() => _p6_5_Employer_change_nameState();
}

class _p6_5_Employer_change_nameState extends State<p6_5_Employer_change_name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Change Name"
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed:(){},
          ),

          IconButton(
            icon: Icon(Icons.chat),
            onPressed:(){},
          ),

        ],
      ),
      drawer: EmployerDrawer(),
    );
  }
}