import 'package:flutter/material.dart';
import 'search_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SearchPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Center(
            child:
            // Icon(Icons.telegram_outlined),
            Image(image: NetworkImage('https://onlinemediacafe.com/wp-content/uploads/2023/03/Internshala-Logo-png-300x169.png'))
              
          )),
          Image(image: NetworkImage('https://icons.veryicon.com/png/o/miscellaneous/simple-line-icon/authentication-16.png'),height: 25,),
          Text("Trusted by over 21 Million", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
          Text("College students & Graduates", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
          SizedBox(height: 20,)
        ],
      ),
      
    );
  }
}