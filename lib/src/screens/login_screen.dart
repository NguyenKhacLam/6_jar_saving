import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:six_jars_saving/src/const/colors.dart' as COLOR;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 100.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                        child: Text(
                          'Hello\nFriend',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 70.0),
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.fromLTRB(230.0, 180.0, 0, 0),
                        child: Text(
                          '❤',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 70.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)
                ),
                icon: Icon(Icons.mail),
                label: Text(
                  'Login with Gmail',
                  style: TextStyle(fontSize: 18.0),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
