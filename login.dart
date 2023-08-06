
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp_animal_identification_system/pages/dashboard.dart';
import 'package:fyp_animal_identification_system/pages/exposure.dart';
import 'package:fyp_animal_identification_system/pages/signup.dart';


class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  void initState(){
    // super.initState( );
    //   Future.delayed(Duration(seconds: 25),(){
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
    //   });

  }
  final _formkey = GlobalKey<FormState>();
   TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
     Future<void>loadingscreen()async{

 showDialog(context: context, builder: (context){
                return Center(child: CircularProgressIndicator(color: Colors.green,));
              });
 }
  
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('lib/assets/images/login.png'),
          SizedBox(
            height: 14,
          ),
        Center(child: 
        Text('Login', 
        style: TextStyle(fontSize: 55,color: Color(0xFF179BE8), 
        fontWeight: FontWeight.bold,),),),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: Form(
            key: _formkey,
            child: Column(
            children: [
              TextFormField(
                controller: EmailController,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  labelText: 'Email'
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return 'This field is required❗️';
                  }
                  else{
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: PasswordController,
                obscureText: true,
               decoration: InputDecoration(
                hintText: 'Enter Password',
                labelText: "Password",
               ),
               validator: (value) {
                  if(value!.isEmpty){
                    return 'This field is required❗️';
                  }
                  else if(value.length<=6){
                    return 'Password must be atleast six letters or greater❗️';
                  }
                  else{
                    return null;
                  }
               },
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard(),));
                },
                  // yahan se dashboard per jaega agar sign up kia hua hoga tu werna nhi...
                //  setState(() {
                   
                //     if(_formkey.currentState!.validate()) {
                     
             
                //       loadingscreen();
                //       FirebaseAuth.instance.signInWithEmailAndPassword(email: EmailController.text, password: PasswordController.text).then((value) {
                //         print('Login Sucessfully!');
                //         Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard(),));
                //       }).onError((error, stackTrace) {
                //         print('Error! ${error.toString()}');
                //       });

                //       // EmailController.clear();
                //       // PasswordController.clear();


                //       // Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard(),));
                //     }
                //  });
                
                child: Container(
                 width: 150,
                 height: 60,
                  child: Center(
                    child: Text('Login', 
                    style: TextStyle(fontSize:25, color: Colors.white, fontWeight: FontWeight.bold,)
                  ),
                   ),
                   decoration: BoxDecoration(
                     color: Color(0xFF179BE8),
                       borderRadius: BorderRadius.circular(10)
                   ),
                          ),
              )],
            
            ),
          ),
        ),
        // SizedBox(
        //   height: 0,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text('Want to make an Account! ', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF179BE8)),),

              )
            ),
             InkWell(
              onTap: () {
                //Sign up Screen per jaega is se.....
                // Future.delayed(Duration(seconds: 35),() {
               
                Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
                // Navigator.of(context).pop();
                //  Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
                // });
                //    CircularProgressIndicator(
                //   color: Colors.green,
                // );
               

                // Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));

              },
               child: Container(
                child: Center(
                  child: Text('SignUP', 
                  style: TextStyle(fontSize:16, fontWeight: FontWeight.bold, color:  Color(0xFF179BE8),)
                  
                )
                         )
                      ),
             ) 
         ],
        )
        ],
      ),
    );
  }
}