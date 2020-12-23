import 'package:dsc_jobin/p3_Employer_login.dart';
import 'package:dsc_jobin/p6_Employer.dart';
import 'package:dsc_jobin/p6_Employer_drawer.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class p6_4_employer_chg_password extends StatefulWidget {
  @override
  _p6_4_employer_chg_passwordState createState() =>
      _p6_4_employer_chg_passwordState();
}

class _p6_4_employer_chg_passwordState
    extends State<p6_4_employer_chg_password> {
  var _white = Colors.white;
  var _blue = Colors.blue;
  var _black = Colors.black;
  var _currentPassword = TextEditingController();
  var _updatedPassword = TextEditingController();
  var _currentPasswordVisible;
  var _updatedPasswordVisible;
  @override
  void initState() {
    super.initState();
    _currentPasswordVisible = false;
    _updatedPasswordVisible = false;
  }

  Icon cusIcon = Icon(Icons.search);
  Widget cutSearchBar = Text("Change Password");
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {},
          ),
        ],
        title: cutSearchBar,
      ),
      drawer: EmployerDrawer(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _currentPassword,
                obscureText: !_currentPasswordVisible,
                decoration: InputDecoration(
                  fillColor: _white,
                  filled: true,
                  labelText: 'Current Password',
                  hintText: 'Enter Current Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  prefixText: '  ',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _currentPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      setState(() {
                        _currentPasswordVisible = !_currentPasswordVisible;
                      });
                    },
                  ),
                  border: new OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _updatedPassword,
                obscureText: !_updatedPasswordVisible,
                decoration: InputDecoration(
                  fillColor: _white,
                  filled: true,
                  labelText: 'Updated Password',
                  hintText: 'Enter Updated Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  prefixText: '  ',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _updatedPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      setState(() {
                        _updatedPasswordVisible = !_updatedPasswordVisible;
                      });
                    },
                  ),
                  border: new OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.07,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => p6_employer(),
                        ));
                  },
                  child: Text(
                    'Change Password',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  color: _white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
