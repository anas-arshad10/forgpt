
import 'package:flutter/material.dart';
import 'package:fyp_animal_identification_system/pages/login.dart';

// import 'package:flutter_app1/pages/home_page.dart';
// import 'package:flutter_app1/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Future.delayed(Duration(seconds: 10),() {
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
        Navigator.push(
               context,
         MaterialPageRoute(builder: (context) => loginpage()),);
      });
      
        
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/images/splash.png'),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              color: Colors.blueAccent

            )

          ],
        ),
      ),
    );
  }
}