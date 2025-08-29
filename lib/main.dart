import 'package:flutter/material.dart';

import 'package:profile/view/Protfolio_Screen.dart';
import 'package:profile/view/constants.dart';
import 'package:profile/view/container.dart';

void main(List<String> args) {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {var size = MediaQuery.of(context).size;
  

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: 
           AppBar(surfaceTintColor: Constants().green,backgroundColor: Constants().green,
        title: Text("Faizan",style: TextStyle(
          fontFamily: 'bold'
        ),),
        actions: [
          Icon(Icons.settings),SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert),SizedBox(
            width: 20,
          )
          
        ],
      
        ),
        body: Contain()
       // body: (size.width >= 1220)?ProtfolioScreen():(size.width>= 760)?Contain():Contain2()
        
         
      ),
    );
  }
}
