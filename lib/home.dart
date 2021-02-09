import 'package:GoodApp/GoodAppBundles.dart';
import 'package:GoodApp/PersonalGrowthDashboard.dart';
import 'package:GoodApp/Sip.dart';
import 'package:GoodApp/customDrawer.dart';
import 'package:GoodApp/goodApp.dart';
import 'package:GoodApp/navBarButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wt = MediaQuery.of(context).size.width;
    // final ht = MediaQuery.of(context).size.height;
    final clr = Color.fromRGBO(55, 71, 79, 2);
 FlutterStatusbarcolor.setNavigationBarColor(Color.fromRGBO(55, 71, 79, 2));
    return Scaffold(
      drawer: CustomDrawer(),
      
      body: Column(
        children: [
          Center(
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.only(top: 100),
              child: Image.asset(
                'assets/men2.png',
                height: 300,
                width: 300,
              ),
            ),
          ),
          Container(
              child: Image.asset(
            'assets/icquotes.png',
            width: 30,
          )),
          Container(
            margin: EdgeInsets.only(top: 11),
            child: Center(
              child: Text(
                'Quote of the Day',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 22, color: clr),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Center(
              child: Text(
                'To  pity  distress  is  but  human; to  relieve  it  is\n  Godlike.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: clr),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 230 ),
            padding:  EdgeInsets.only(right: 70 ),
            child: Column(
              children: [
                Text('Select a category\nfrom below',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: clr,
                      fontWeight: FontWeight.w500,
                    )),
                    Padding(padding: EdgeInsets.only(top: 12),
                      child: Image.asset('assets/imgdownArrow.png',
                      width: 60,
                      height: 60,),
                    ),
              ],
            ),
          )
        ],
      ),

  //---------------BOTTOM NAVIGATION BAR-------------------//


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
                  
  //_________________________________BOTTOM NAVIGATION BAR BUTTONS______________________________//                       

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

  // --------------------------------------------------------------------------------

               BtGrid(
                 page: (){
                   Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => GoodApp(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                 },
               ),

  //------------------------------------------------------------------------------             

                 BtMood(
                   page: (){
                     Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Gab(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                   },
                 ),

  //----------------------------------------------------------------------------------


                        
                     
                  BtGraph(
                    page:(){ Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => PersonalGD(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                    }
                  ),

  //-----------------------------------------------------------------------------------------

                ],
                ), // Stack of bottom Appbar          
                
                height: 65,
                width: 400,
                
              ),
      
            ],
          ),
        ),

    );
  }
}
