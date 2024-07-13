import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mydesign(),

    );
  }
}
class mydesign extends StatefulWidget{
  const mydesign({super.key});

  @override
  State<mydesign> createState() => _mydesignState();
}

class _mydesignState extends State<mydesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 30, // Set the desired width for the icon
                height: 30, // Set the desired height for the icon
                child: Image.asset('assets/Home_icon.png'), // Replace 'assets/Home_icon.png' with the path to your image asset
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 30, // Set the desired width for the icon
                height: 30, // Set the desired height for the icon
                child: Image.asset('assets/Home_icon.png'), // Replace 'assets/Home_icon.png' with the path to your image asset
              ),
              label: 'Home',
            ),
            // Add more BottomNavigationBarItems as needed
          ],selectedLabelStyle:TextStyle(color: Colors.pink,fontWeight: FontWeight.bold)
          ,
          // Define other properties such as onTap, currentIndex, selectedItemColor, etc.

        ),
      ),

      backgroundColor: Colors.black,
      appBar: AppBar( toolbarHeight: 5,
        backgroundColor: Colors.black,
      ),
      body: // title bar
      Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 400,
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset('assets/logo.png'),
                ),
                Container(
                  child: Image.asset('assets/scearch_btn.png'
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              child: Image.asset('assets/Main_img.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 180,
                height: 80,
                child: Image.asset('assets/tropy_dis.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                ),
                width: 100,
                height: 30,
                child: Center(
                  child: Text('PLAY NOW',style: TextStyle(
                    color: Colors.black
                  ),),
                ),
              ),
            ],
          ),
          //here i need no overlay the image
          Stack(
            children: [
             Container(
                child: Image.asset('assets/live_main.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 115,left: 20),
                child: Container(
                  width: 65,
                 height: 21,
                 child:Image.asset('assets/live_logo.png') ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140,left:20),
                child: Container(
                  child: Text('Insiders Grand Preview',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize: 16),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170,left: 20),
                child: Container(
                  width: 118,
                  height: 35,
                  child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),


                  ),child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Icon(Icons.play_arrow,color: Colors.white,),
                      ),
                      Text('Watch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                   ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
