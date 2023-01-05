import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabha_page extends StatefulWidget {
  const Sabha_page({Key? key}) : super(key: key);

  @override
  State<Sabha_page> createState() => _Sabha_pageState();
}

class _Sabha_pageState extends State<Sabha_page> {
  int counter = 0;

  void counters(){

    setState(() {
      counter++;

    });

  }
  void againcounter(){
    setState(() {
      counter= 0;

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "lib/images/filip-zrnzevic-_EMkxLdko9k-unsplash.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$counter",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "عدد الاستغفار",
              style: GoogleFonts.wallpoet(fontSize: 30,fontWeight: FontWeight.w200,color: Colors.white),
            ),

          ],
        ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Padding(padding: EdgeInsets.only(left: 31),
          child:  Align(
              alignment: Alignment(
                  0.1,0.9
              ),
          child:FloatingActionButton.extended(
            heroTag: null,
            onPressed:(){

              againcounter();

            } ,
            label: Text("إعادة",style:GoogleFonts.tajawal(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w700),),
            icon: Icon(Icons.replay ,color: Colors.black,),
            backgroundColor: Colors.white,



          )


          )


            ,
          ),
          Align(
            alignment: Alignment(
              0.1,0.7
            ),
            child:FloatingActionButton.extended(
    heroTag: null,
    onPressed:(){
      counters();

    } ,
    label: Text("أستغفر الله",style: GoogleFonts.tajawal(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w700),),
    icon: Icon(Icons.fingerprint ,color: Colors.black,),
    backgroundColor: Colors.white,
          ),),


  ]
        
      ),
      
    );
  }
}
