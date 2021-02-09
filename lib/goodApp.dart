import 'package:GoodApp/GoodAppBundles.dart';
import 'package:GoodApp/PersonalGrowthDashboard.dart';
import 'package:GoodApp/Sip.dart';
import 'package:GoodApp/bottomSheet.dart';
import 'package:GoodApp/cardandlist.dart';
import 'package:GoodApp/customDrawer.dart';
import 'package:GoodApp/navBarButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class GoodApp extends StatefulWidget {
  @override
  _GoodAppState createState() => _GoodAppState();
}

class _GoodAppState extends State<GoodApp> {
	
 
  @override
  Widget build(BuildContext context) {
     final colo=Color.fromRGBO(55, 71, 79, 2);
    FlutterStatusbarcolor.setNavigationBarColor(Color.fromRGBO(55, 71, 79, 2));
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),
      onPressed: (){
             showModalBottomSheet(context: context, builder: (context){
              return Bbsheet();
             });

              
      }, // floating button on press closed

      backgroundColor: Color.fromRGBO(55, 71, 79, 2),splashColor: Color.fromRGBO(55, 71, 79, 1),
      mini: true,
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.endDocked,
      
      bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 1.0,
      elevation: 0,
      
        color: Color.fromRGBO(55, 71, 79, 2),

          
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              Container( 
                child:Stack(children: [
                  
   //_________________________________BOTTOM NAVIGATION BAR BUTTONS________________________________//

                 BtDrawer(),
                 
  //  -----------------------------------------------------------------------------

                 BtPlant(
                   page: (){
                     Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Sip(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                   },
                 ),

  // -------------------------------------------------------------------------------

                  Positioned( left: 160,
                              top: 8,
                              child:Highlight()
                              ),
                              BtGrid(),
                             
  //----------------------------------------------------------------------------------
                 
                  BtMood(
                    page:(){
                      Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Gab(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                    } ,
                  ),

  //----------------------------------------------------------------------------------
                        
                  BtGraph(
                    page: (){
                      Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => PersonalGD(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                    },
                  ),

  //------------------------------------------------------------------------------------
                ],
                ), // Stack of bottom Appbar          
                
                height: 65,
                width: 400,
                
              ),
      
            ],
          ),
        ),

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            
            leadingWidth: .01,
        leading:Builder(
      builder: (BuildContext context) {
       return IconButton(
         iconSize: .01,
          icon: const Icon(Icons.arrow_drop_up),
         onPressed: (){},
          // { Scaffold.of(contextt).openDrawer(); },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
     },
   ),
            pinned: false,
            backgroundColor: colo,
            expandedHeight: 150,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
            actions: [
              IconButton(icon: Icon(Icons.notification_important), onPressed: (){}),
              IconButton(icon: Icon(Icons.mobile_friendly), onPressed: (){}),
            ],
            
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left:0,bottom:0),
              title: ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0,0, 1),
              title: Text("Goop App",
              style:TextStyle(fontSize: 14,color: Colors.white)),
              subtitle: Text("Stay happy, Healthy and Productive",
              style:TextStyle(fontSize: 9,color: Colors.white),
              ),
              )
            ),
           
          ),
         SliverList(delegate: SliverChildListDelegate(
           [
            
             Cardandlist(),
             
            // (clickaction: (){
            //    print("popular");
            //  },
            //    iconii: Icons.star,
            //    ttext: 'Popular',
            //    customchild:ListView( scrollDirection: Axis.horizontal,
            //           children:[
            //               Cuscard(
            //                     imgloc: 'assets/manwithplant.png',
            //                      discri: 'Today ToDo ',),
            //               Cuscard(
            //                     imgloc: 'assets/manwithplant.png',
            //                      discri: 'Journal',),
            //               Cuscard(
            //                     imgloc: 'assets/manwithplant.png',
            //                      discri: 'Pomodoro',),
            //               Cuscard(imgloc: 'assets/manwithplant.png',
            //                      discri: 'Habit Builder',),
            //               Cuscard(imgloc: 'assets/manwithplant.png',
            //                      discri: 'Positive Affirmation',),
            //               Cuscard(imgloc: 'assets/manwithplant.png',
            //                      discri: '2048',),
            //           ]),
                              
                            // ),
              
           
    // one      
        
          //    clickaction: (){
          //      print("pro Favorate");
          //    },
          //      iconii: Icons.favorite,
          //      ttext: 'Favourates',
          //      customchild: ListView( scrollDirection: Axis.horizontal,
          //           children:[
          //               Cuscard(
          //                 imgloc: 'assets/manwithplant.png',
          //                  discri: 'Today ToDo ',),
          //               Cuscard(
          //                 imgloc: 'assets/manwithplant.png',
          //                  discri: 'Journal',),
          //               Cuscard(
          //                 imgloc: 'assets/manwithplant.png',
          //                  discri: 'Pomodoro',),
          //               Cuscard(imgloc: 'assets/manwithplant.png',
          //                  discri: 'Habit Builder',),
          //               Cuscard(imgloc: 'assets/manwithplant.png',
          //                  discri: 'Positive Affirmation',),
          //               Cuscard(imgloc: 'assets/manwithplant.png',
          //                  discri: '2048',),
          //           ]),
          //    ),


          ]))

        ],
      ),
      
  drawer: CustomDrawer(),

    );
  }
}



