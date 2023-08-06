

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp_animal_identification_system/pages/active_tb.dart';
import 'package:fyp_animal_identification_system/pages/exposure.dart';
import 'package:fyp_animal_identification_system/pages/extra_pulmonary.dart';
import 'package:fyp_animal_identification_system/pages/latent.dart';
import 'package:fyp_animal_identification_system/pages/login.dart';
import 'package:fyp_animal_identification_system/pages/pulmonary.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';



class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  bool isoff = false;
// NotificationsServices notificationsServices = NotificationsServices();
  @override
  void initState() {

    super.initState();
    // notificationsServices.initialiseNotifications();
  }
  @override
  Widget build(BuildContext context) {
   
  //  bool isHover = false;
  Future<void>FinditForMe() async{
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(child: Text('Top Doctors Approved Remedies To Do',
          style: TextStyle(fontSize: 16, color:  Colors.blue, fontWeight: FontWeight.bold,))
          ),
          ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Stay Active', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://g.page/CatParadisePk?share'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Avoid Harmful Habbit', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/VdMNdu2X3vU231Q79'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Get Enough Sleep',style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/sAxDrgVznYitCQuX8'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Manage Stress', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/GyyJRjp57kxc8t83A'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Stay Hydrated', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/rgBGQKmB6fV7WX637'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Be Cautious with Medication', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/6JAqDjJ7oaC7eCGo6'),

          ),
          TextButton(onPressed:() {
            Navigator.pop(context);
          },  child: Text('Done', style: TextStyle(fontSize: 18, color:  Color(0xFF179BE8)),))
        ],
      ), 
    );
  });

 }
 Future<void>Hospitals() async{
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(child: Text('Top Hospitals For Treatment',
          style: TextStyle(fontSize: 20, color:  Colors.blue, fontWeight: FontWeight.bold,))
          ),
          ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Liaquat National Hospital', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://g.page/CatParadisePk?share'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Agha Khan Hospital', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/VdMNdu2X3vU231Q79'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Indus Hospital',style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/sAxDrgVznYitCQuX8'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Burhani Hospital', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/GyyJRjp57kxc8t83A'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('SIUT Hospital', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/rgBGQKmB6fV7WX637'),

          ),
           ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Civil Hospital', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/6JAqDjJ7oaC7eCGo6'),

          ),
          ListTile(
            leading: Icon(Icons.health_and_safety, color:  Color(0xFF179BE8),),
            title: Text('Abbasi Shaheed Hospitals', style: TextStyle(color:  Color(0xFF179BE8)),),
            // onTap:() => launch('https://goo.gl/maps/6JAqDjJ7oaC7eCGo6'),

          ),
          TextButton(onPressed:() {
            Navigator.pop(context);
          },  child: Text('Done', style: TextStyle(fontSize: 18, color:  Color(0xFF179BE8)),))
        ],
      ), 
    );
  });

 }
 Future<void>loadingscreen()async{

 showDialog(context: context, builder: (context){
                return Center(child: CircularProgressIndicator(color: Color(0xFF179BE8),));
              });
 }

    return Scaffold(
      appBar: AppBar(
        title: Text('Tuberculosis Detector', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xFF179BE8),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF179BE8),
        width: 300,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 30,
            ),
            ListTile(
               leading: Icon(Icons.dashboard, color: Colors.white,),
            title: Text('Dashboard', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
             onTap: () {
            
            Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard(),));
          },
            ),
           
            //  ListTile(
            //   leading: Icon(Icons.notifications, color: Colors.white),
            //   title: Text('Notifications', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
            //   trailing:
            //   IconButton(onPressed:() {
            //     // notificationsServices.sendnotification('hi', 'get it');
            //    notificationsServices.cancelnotification();
            //     setState(() {
            //       isoff = !isoff;
            //       // print('off');
            //     });
            //   },icon: Icon(isoff? Icons.notifications_off :Icons.notifications, color: isoff ? Colors.red : Colors.yellow,) 
            //   ),
            //   // tileColor: isoff ? Colors.yellow : Colors.white,
            //   ),
            
         ListTile(
          leading: Icon(Icons.logout, color: Colors.white,),
          title: Text('LogOut', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
          onTap: () {
            setState(() {
              loadingscreen();
              FirebaseAuth.instance.signOut().then((value) {
                print('SignOut');
               Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage(),));
              }).onError((error, stackTrace) {
                print('Error${error.toString()}');
              });
            });
            // Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage(),));
          },
         )
          ]
        )
      ),
      //bottom navigation
      // bottomNavigationBar: 
      // Container(
      //   color: Color(0xFF179BE8),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      //     child: GNav(
      //       backgroundColor: Color(0xFF179BE8),
      //       gap: 8,
      //       activeColor: Colors.white,
      //       tabBackgroundColor: Colors.lightBlueAccent,
      //       padding: EdgeInsets.all(16),
      //       tabs: [
      //        GButton(icon: Icons.home,iconColor: Colors.white, textColor: Colors.white,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard(),));},),
      //       GButton(icon: FontAwesomeIcons.cat ,iconColor: Colors.white, textColor: Colors.white,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Cat_Breed(),));}),
      //       GButton(icon: FontAwesomeIcons.dog,iconColor: Colors.white, textColor: Colors.white,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DogBreed(),));}),
      //       GButton(icon: FontAwesomeIcons.kiwiBird,iconColor: Colors.white, textColor: Colors.white,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ParrotBreed(),));}),
            
      //       // GButton(icon: Icons.link, text: 'Link',iconColor: Colors.white, textColor: Colors.white,),

      //     ]),
      //   ),
      // ),
    
       body:
      //  color: Colors.white,
       Column(
        children: [ 
          // Image.asset('lib/assets/images/Hola!.png'),
    //       Padding(padding: EdgeInsets.symmetric(vertical: 25)),
    //  Title(color: Colors.white, child: 
    //   Text('Hola! 🐶🦜🐱', 
    //   style: TextStyle(fontSize: 44, color: Colors.white),),),
    //   Text('There is a saying. If you want someone to love you forever, be around animals, feed them and love them'
    //   , style: TextStyle(fontSize: 34, color: Colors.white),),
        //   Container(
        // height: 150,
        // width: 650,
        // color: Color.fromARGB(255, 15, 193, 54),
        //   ),
      // SizedBox(
      //   height: 5,
      // ),
      Center(

     child:  
      Column(
        children: [
          SizedBox(
            height: 140,
          ),
          Padding(padding: EdgeInsets.all(20)),
           InkWell(
              onTap:() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => latent_tb(),));
              },
              child: Container(
                height: 60,
                width: 350,
                // color: Colors.green,
                child: Center(
                  child: Text('Check Tuberculosis', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,))
                ),
               decoration: BoxDecoration(
                color:  Color(0xFF179BE8),
                borderRadius: BorderRadius.circular(7)
               ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
             InkWell(
              onTap:() => Hospitals(),
              child: Container(
                height: 60,
                width: 350,
                // color: Colors.green,
                child: Center(
                  child: Text('Hospitals', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,))
                ),
               decoration: BoxDecoration(
                color:  Color(0xFF179BE8),
                borderRadius: BorderRadius.circular(7)
               ),
              ),
            ),
             SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => FinditForMe(),
              child: Container(
                height: 60,
                width: 350,
                // color: Colors.green,
                child: Center(
                  child: Text('Remedies', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,))
                ),
               decoration: BoxDecoration(
                color:  Color(0xFF179BE8),
                borderRadius: BorderRadius.circular(7)
               ),
              ),
            ),
            
         
//  InkWell(
//   onTap: () {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Cat_Breed(),));
//   },
//    child: AnimatedContainer(
    
//         duration: Duration(milliseconds: 200),
//           width: 350,
//           height: 100,
         
//           child: Image.asset('lib/assets/images/cat1.gif',),
//           // child: 
//           // Center(child: Text('🐱CATS' ,style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),)),
//         decoration: BoxDecoration(
//            color:  Colors.white,
//           borderRadius: BorderRadius.circular(15),
//             boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey,
//                       offset: const Offset(
//                         5.0,
//                         5.0,
//                       ),
//                       blurRadius: 10.0,
//                       spreadRadius: 2.0,
//                     ), //BoxShadow
//                     BoxShadow(
//                       color: Colors.grey,
//                       offset: const Offset(0.0, 0.0),
//                       blurRadius: 0.0,
//                       spreadRadius: 0.0,
//                     ), //BoxShadow
//           ]
//         ),
//         ),
//  ),
// Container(

//   width: 400, // Desired width of the Container/Card
//   height: 110, // Desired height of the Container/Card
//   child: Card(
//      color: Color(0xFF179BE8),
//     shadowColor: Colors.grey,
//     margin: const EdgeInsets.all(20),
//     child: Row(
//       children: <Widget>[
//         Container(
          
//           width: 90, // Desired width of the image
//           height: 90, // Desired height of the image
//           child: Image.asset(
//             'lib/assets/images/exp.jpg',
//             fit: BoxFit.cover, // Adjust the BoxFit as needed
//           ),
//         ),
//         Expanded(
//           child: ListTile(
            
//             title: const Text('Exposure Tuberculosis', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
//             onTap:() {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => exposure_tb(),));
//             },
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// Container(
 
//   width: 400, // Desired width of the Container/Card
//   height: 110, // Desired height of the Container/Card
//   child: Card(
//      color: Color(0xFF179BE8),
//     shadowColor: Colors.grey,
//     margin: const EdgeInsets.all(20),
//     child: Row(
//       children: <Widget>[
//         Container(
//           width: 100, // Desired width of the image
//           height: 100, // Desired height of the image
//           child: Image.asset(
//             'lib/assets/images/latent.jpg',
//             fit: BoxFit.cover, // Adjust the BoxFit as needed
//           ),
//         ),
//         Expanded(
//           child: ListTile(
//             title: const Text('Latent Tuberculosis', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
//             onTap: () {
              
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => latent_tb(),));
//             },
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// Container(
//   width: 400, // Desired width of the Container/Card
//   height: 110, // Desired height of the Container/Card
//   child: Card(
//     color: Color(0xFF179BE8),
//     shadowColor: Colors.grey,
//     margin: const EdgeInsets.all(20),
//     child: Row(
//       children: <Widget>[
//         Container(
//           width: 100, // Desired width of the image
//           height: 100, // Desired height of the image
//           child: Image.asset(
//             'lib/assets/images/active.jpg',
//             fit: BoxFit.cover, // Adjust the BoxFit as needed
//           ),
//         ),
//         Expanded(
//           child: ListTile(
//             title: const Text('Acitve Tuberculosis', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
//             onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => active_tb(),));
//             },
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// Container(
//   width: 400, // Desired width of the Container/Card
//   height: 110, // Desired height of the Container/Card
//   child: Card(
//     color: Color(0xFF179BE8),
//     shadowColor: Colors.grey,
//     margin: const EdgeInsets.all(20),
//     child: Row(
//       children: <Widget>[
//         Container(
//           width: 100, // Desired width of the image
//           height: 100, // Desired height of the image
//           child: Image.asset(
//             'lib/assets/images/pulmonary.jpg',
//             fit: BoxFit.cover, // Adjust the BoxFit as needed
//           ),
//         ),
//         Expanded(
//           child: ListTile(
//             title: const Text('Pulmonary Tuberculosis', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
//             onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => pulmonary_tb(),));
//             },
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// Container(
//   width: 400, // Desired width of the Container/Card
//   height: 110, // Desired height of the Container/Card
//   child: Card(
//     color: Color(0xFF179BE8),
//     shadowColor: Colors.grey,
//     margin: const EdgeInsets.all(20),
//     child: Row(
//       children: <Widget>[
//         Container(
//           width: 100, // Desired width of the image
//           height: 100, // Desired height of the image
//           child: Image.asset(
//             'lib/assets/images/extra_pulmonary.jpg',
//             fit: BoxFit.cover, // Adjust the BoxFit as needed
//           ),
//         ),
//         Expanded(
//           child: ListTile(
//             title: const Text('Extra-Pulmonary Tuberculosis', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
//             onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => extra_pulmonary_tb(),));
//             },
//           ),
//         ),
//       ],
//     ),
//   ),
// ),


           
      // SizedBox(
      //   height: -5
      // ),
    //     Card(
    //   shadowColor: Colors.grey,
    //     margin: const EdgeInsets.all(20),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         ListTile(
    //           leading: Image.asset('lib/assets/images/dog.gif'),
    //           title: const Text('Demo Title'),
    //           // subtitle: const Text('This is a simple card in Flutter.'),
             
    //         ),
    //       ],
    //     ),
    //   ),
    //   Card(
    //   shadowColor: Colors.grey,
    //     margin: const EdgeInsets.all(20),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         ListTile(
    //           leading: Image.asset('lib/assets/images/dog.gif'),
    //           title: const Text('Demo Title'),
    //           // subtitle: const Text('This is a simple card in Flutter.'),
             
    //         ),
    //       ],
    //     ),
    //   ),
    // Card(
    //   shadowColor: Colors.grey,
    //     margin: const EdgeInsets.all(20),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         ListTile(
    //           leading: Image.asset('lib/assets/images/dog.gif'),
    //           title: const Text('Demo Title'),
    //           // subtitle: const Text('This is a simple card in Flutter.'),
             
    //         ),
    //       ],
    //     ),
    //   ),
    //     Card(
        
    //     margin: const EdgeInsets.all(20),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         ListTile(
    //           leading: Image.asset('lib/assets/images/dog.gif', scale: 10.0,),
    //           title: const Text('Demo Title', style: TextStyle(fontSize: 25),),
    //           // subtitle: const Text('This is a simple card in Flutter.'),
    //         ),
    //       ],
    //     ),
    //   ),
  //      InkWell(
  //       onTap:  () {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => DogBreed(),));
  // },
  //        child: Container(
  //         width: 350,
  //         height: 100,
         
          
  //         child: Image.asset('lib/assets/images/dog.gif'),
  //            decoration: BoxDecoration(
  //          color: Colors.white,
  //         borderRadius: BorderRadius.circular(15),
  //           boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey,
  //                     offset: const Offset(
  //                       5.0,
  //                       5.0,
  //                     ),
  //                     blurRadius: 10.0,
  //                     spreadRadius: 2.0,
  //                   ), //BoxShadow
  //                   BoxShadow(
  //                     color: Colors.white,
  //                     offset: const Offset(0.0, 0.0),
  //                     blurRadius: 0.0,
  //                     spreadRadius: 0.0,
  //                   ), //BoxShadow
  //         ]
  //            ),
  //            ),
  //      ),
      //  SizedBox(
      //   height: 20
      // ),
      
  //      InkWell(
  //       onTap:  () {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => DogBreed(),));
  // },
  //        child: Container(
  //         width: 350,
  //         height: 100,
         
          
  //         child: Image.asset('lib/assets/images/dog.gif'),
  //            decoration: BoxDecoration(
  //          color: Colors.white,
  //         borderRadius: BorderRadius.circular(15),
  //           boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey,
  //                     offset: const Offset(
  //                       5.0,
  //                       5.0,
  //                     ),
  //                     blurRadius: 10.0,
  //                     spreadRadius: 2.0,
  //                   ), //BoxShadow
  //                   BoxShadow(
  //                     color: Colors.white,
  //                     offset: const Offset(0.0, 0.0),
  //                     blurRadius: 0.0,
  //                     spreadRadius: 0.0,
  //                   ), //BoxShadow
  //         ]
  //            ),
  //            ),
      //  ),
      //  SizedBox(
      //   height: 20
      // ),
      
  //      InkWell(
  //       onTap:  () {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => DogBreed(),));
  // },
  //        child: Container(
  //         width: 350,
  //         height: 100,
         
          
  //         child: Image.asset('lib/assets/images/dog.gif'),
  //            decoration: BoxDecoration(
  //          color: Colors.white,
  //         borderRadius: BorderRadius.circular(15),
  //           boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey,
  //                     offset: const Offset(
  //                       5.0,
  //                       5.0,
  //                     ),
  //                     blurRadius: 10.0,
  //                     spreadRadius: 2.0,
  //                   ), //BoxShadow
  //                   BoxShadow(
  //                     color: Colors.white,
  //                     offset: const Offset(0.0, 0.0),
  //                     blurRadius: 0.0,
  //                     spreadRadius: 0.0,
  //                   ), //BoxShadow
  //         ]
  //            ),
  //            ),
  //      ),
     
        ]
      ),
      ),
    
  //     SizedBox(
  //       height: 0,
  //     ),
  //     Center(
  //       child:
      
  //    Column(
  //     children: [
  //        Padding(padding: EdgeInsets.all(20)),
  //        InkWell(
  //         onTap: () {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => ParrotBreed(),));
  // },
  //        child: Container(
  //         width: 350,
  //         height: 100,
         
          
  //         child: Image.asset('lib/assets/images/parrot.gif'),
  //            decoration: BoxDecoration(
  //          color: Colors.white,
  //         borderRadius: BorderRadius.circular(15),
  //           boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey,
  //                     offset: const Offset(
  //                       5.0,
  //                       5.0,
  //                     ),
  //                     blurRadius: 10.0,
  //                     spreadRadius: 2.0,
  //                   ), //BoxShadow
  //                   BoxShadow(
  //                     color: Colors.white,
  //                     offset: const Offset(0.0, 0.0),
  //                     blurRadius: 0.0,
  //                     spreadRadius: 0.0,
  //                   ), //BoxShadow
  //         ]
  //            ),
  //            ),
  //      ),
  //      SizedBox(
  //       width: 10,
  //      ),
  //       InkWell(
  //         onTap: () {
  //           FinditForMe();
  //         },
  //        child: Container(
  //         width: 350,
  //         height: 100,
         
          
  //         child: Image.asset('lib/assets/images/search.gif'),
  //            decoration: BoxDecoration(
  //          color: Colors.white,
  //         borderRadius: BorderRadius.circular(15),
  //           boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey,
  //                     offset: const Offset(
  //                       5.0,
  //                       5.0,
  //                     ),
  //                     blurRadius: 10.0,
  //                     spreadRadius: 2.0,
  //                   ), //BoxShadow
  //                   BoxShadow(
  //                     color: Colors.white,
  //                     offset: const Offset(0.0, 0.0),
  //                     blurRadius: 0.0,
  //                     spreadRadius: 0.0,
  //                   ), //BoxShadow
  //         ]
  //            ),
  //            ),
  //      )
  //     ]
  //    )
    //  ),
        ],
        
      )
      
    );
    
  }
}