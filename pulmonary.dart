import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp_animal_identification_system/pages/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:url_launcher/url_launcher.dart';

class pulmonary_tb extends StatefulWidget {
  const pulmonary_tb({super.key});

  @override
  State<pulmonary_tb> createState() => _pulmonary_tbState();
}

class _pulmonary_tbState extends State<pulmonary_tb> {
  // @override
  // Widget build(BuildContext context) {
     bool loading = true;
 late File _image;
  late List _output ;
  final imagepicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // loadmodel().then((value) {
    //   setState(() {});
    // });
  }

  detectimage(File image) async {
    var prediction = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2, //yahan 2 likha tha mene....
        threshold: 0.6,
        imageMean: 127.5,
        imageStd: 127.5);

    setState(() {
      _output = prediction!; //yahan per ! ye tha..
      loading = false;
    });
  }

  // loadmodel()  async{
  //    await Tflite.loadModel(
  //       model: 'lib/assets/images/Animal_Identification.tflite', labels: 'lib/assets/images/labels.txt');
  // }

  @override
  void dispose() {
    super.dispose();
  }

  pickimage_camera() async {
    var image = await imagepicker.getImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
    detectimage(_image);
  }

  pickimage_gallery() async {
    var image = await imagepicker.getImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
    detectimage(_image);
  }

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

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF179BE8),
        title: Center(child:
          Text(
          'Pulmonary Tuberculosis',
           style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ),
        leading: BackButton(color: Colors.white, onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard(),));
        },),
      ),
      body: Container(
        height: h,
        width: w,
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              padding: EdgeInsets.all(10),
              child: Image.asset('lib/assets/images/pulmonary_tb.jpg' )
              // child: Image.asset('assets/mask.png'),
            ),
            Container(
                child: Text('Pulmonary Tuberculosis',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFF179BE8)
                    ))),
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary:   Color(0xFF179BE8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  onPressed: () {
    pickimage_camera();
  },
  child: Text(
    'Capture',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
)
,
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary:   Color(0xFF179BE8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  onPressed: () {
    pickimage_gallery();
  },
  child: Text(
    'Gallery',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
)
,
                  ),
                ],
              ),
            ),
            loading != true
                ? Container(
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          // width: double.infinity,
                          padding: EdgeInsets.all(15),
                          child: Image.file(_image),
                        ),
                        _output!= null
                            ? 
                            Text(
                                (_output[0]['label']).toString().substring(2),
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:  Color(0xFF179BE8)), )
                            : 
                            Text('', ),
                        // _output != null
                        //     ? Text(
                        //         'Confidence: ' +
                        //             (_output[0]['confidence']).toString(),
                        //         style: GoogleFonts.roboto(fontSize: 18))
                        //     : Text('')
                      ],
                    ),
                  )
                : Container(),
                SizedBox(
                 height: 7,
                ),
            InkWell(
              onTap: () => FinditForMe(),
              child: Container(
                height: 40,
                width: 400,
                // color: Colors.green,
                child: Center(
                  child: Text('Remedies', style: TextStyle(fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold,))
                ),
               decoration: BoxDecoration(
                color:  Color(0xFF179BE8),
                borderRadius: BorderRadius.circular(7)
               ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}