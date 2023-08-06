
// import 'dart:js';

import 'package:email_auth/email_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp_animal_identification_system/pages/login.dart';



class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  final _formkey = GlobalKey<FormState>();
  final _otpkey = GlobalKey<FormState>();
  String name = '';
  TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    TextEditingController OTPController = TextEditingController();
    TextEditingController UsernameController = TextEditingController();
   EmailAuth emailAuth = new EmailAuth(sessionName: 'Hello 👋! This is M.Ashar(2019-SE-300) Group Leader of Animal Identification System 🐶🐱🦜, Here is your OTP for verifcation 🗝' );
    Future<void>ShowInformationDialog(BuildContext context) async{
      return await showDialog(context: context, builder: (context) {
        return AlertDialog(
          
          content: Form(
             key: _otpkey,
            child: 
          
          Column(
           
            mainAxisSize: MainAxisSize.min,
            children: [
              Title(color: Colors.black, 
              child: Text('Verification 🔒', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
              SizedBox(
                height: 10,
              ),

            Text('We have sent you the OTP (One Time Password) on your provided email 🗝' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            TextFormField(
              controller: OTPController,
                  decoration: InputDecoration(
                    hintText: 'XXXXXX',
                    labelText: 'Enter OTP',
                  
                  ),
                  keyboardType: TextInputType.number,
                  validator:(value) {
                    if(value!.isEmpty){
                      return 'This field is required';
                    }
                    else if(value.length<6 || value.length>6){
                      return 'OTP value is not correct';
                    }
                    else {
                      return null;
                    }
                  },
            ),
            Row(
              children: [
                TextButton( 
                child: Text('Verify OTP', style: TextStyle(fontSize: 17, color: Colors.blueAccent)
                
                ),
                onPressed: () {
                  // setState(() async{
                    
                                setState(() {
                     
                       
                      
                      if(_otpkey.currentState!.validate()){

                        verifyOtp(context);
                   
                     OTPController.clear();
                   
                      }
                      
                    
                    });

                
                 

                  
                
                },
                ),
                
            TextButton( 
                child: Text('Resend OTP', style: TextStyle(fontSize: 17, color: Colors.pink)
                
                ),
                onPressed: () {
                  setState(() {
                    sendOtp();
                  });
                },
                ),

                  TextButton( 
                child: Text('Cancel', style: TextStyle(fontSize: 17, color: Colors.blue)
                
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                )

              ],
            )
            ],
          )),
        );
      });
    }

    //OTP Verified DialogBox 
  Future<void>SentOtpConfirmation(BuildContext context) async{
    return await showDialog(context: context, builder: (context){
      return AlertDialog(
        
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Title(color: Colors.black, 
        child: Text('🖖', style: TextStyle(fontSize: 35)) 
        ),

        Text('OTP Verified', style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),),
        
        TextButton( child: Text('OK', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.green)
        
        ),
        onPressed: () {
          setState(() {
                   EmailController.clear();
                     PasswordController.clear();
                     UsernameController.clear();
          });
         Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage(),));
        },
     ) ,

     ],

    ),
      );
    });

    
  }
  Future<void>OtpDeclined(BuildContext context) async{
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
      children: [
        Title(color: Colors.black, 
        child: 
        Text('❌', style: TextStyle(fontSize: 25)) 
        ),


        Text('OTP Not Verified', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),),
        
        TextButton( child: Text('OK', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)
        
        ),
        onPressed: () {
         Navigator.pop(context);
        },
     ) 
     ],

    ),
      );
    });
  }
    void sendOtp() async{
      bool res = await emailAuth.sendOtp(recipientMail: EmailController.value.text, otpLength: 6);
      if(res){
        print('OTP Sent.');
      }
      else{
        print('We can not send OTP');
      }
    }
  void verifyOtp(BuildContext context) async{
      bool res = await emailAuth.validateOtp(recipientMail: EmailController.value.text, userOtp: OTPController.value.text);
      if(res){
        SentOtpConfirmation(context);
          print('OTP Verified');
            //  FirebaseAuth.instance.createUserWithEmailAndPassword(email: EmailController.text, password: PasswordController.text).then((value) {
            //  print('Account Created Sucessfully!');
            // Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage(),));
            //  }).onError((error, stackTrace) {
            // print('Error! ${error.toString()}');
            //           });

      }
      else{
        OtpDeclined(context);
        print('OTP not Verfied');
      }
    }
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
        Image.asset('lib/assets/images/signup.png', scale: 3.5,),
          SizedBox(
            height: 5,
          ),
        Center(child: 
        Text('Sign Up', 
        style: TextStyle(fontSize: 55,color: Color(0xFF179BE8), 
        fontWeight: FontWeight.bold,),),),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
              // SizedBox(
              //   height: 5,
              // ),
              TextFormField(
                controller: UsernameController,
                decoration: InputDecoration(
                  hintText: 'Enter Usernme',
                  labelText: 'Username'
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return 'This field is required❗️';
                  }
                  else{
                    return null;
                  }
                },
                onChanged: (value) {
                 
                  setState(() {
                     name = value;
                    
                  });
                },
              ),
              //  SizedBox(
              //   height: 15,
              // ),
              TextFormField(
                obscureText: true,
                controller: PasswordController,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage(),));
                },
                  // yahan se dashboard per jaega agar sign up kia hua higa tu werna nhi...
            //      setState(() {
                   
            //         if(_formkey.currentState!.validate()){
            //           // ShowInformationDialog(context);
            //       //  sendOtp();
            //       FirebaseAuth.instance.createUserWithEmailAndPassword(email: EmailController.text, password: PasswordController.text).then((value) {
            //  print('Account Created Sucessfully!');
            // Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage(),));
            //  }).onError((error, stackTrace) {
            // print('Error! ${error.toString()}');
            //           });
                   
            //         }
            //      });
                
                child: Container(
                  
                 width: 150,
                 height: 60,
                  child: Center(
                    child: Text('SignUp', 
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
                child: Text('Already have an Account! ', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 37, 177, 205)),),

              )
            ),
             InkWell(
              onTap: () {
                //Login Screen per jaega is se.....
                Navigator.pop(context);
              },
               child: Container(
                child: Center(
                  child: Text('Login', 
                  style: TextStyle(fontSize:19, fontWeight: FontWeight.bold, color: Color(0xFF179BE8),)
                  
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