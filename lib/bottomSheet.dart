import 'package:flutter/material.dart';

class Bbsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
        Container(
          color: Color(0xFF737373),
          height: 365,
                  child: Container(margin: EdgeInsets.symmetric(horizontal:10),
                
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(topLeft: const Radius.circular(10),topRight: const Radius.circular(10)),
                ),
                   child: Column(
                                   children:[ 
                                     Container( height: 50,   
                                       child:Image.asset('assets/icArrowDown.png',height: 20,width: 20,),),
                                 Container(margin: EdgeInsets.only(left:25),
                                   child: Column(
                      children: [
                         Container(padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                               child: Row(children: [
                                    Icon((Icons.library_add_check_rounded),size: 18,),
                                    Padding(padding:EdgeInsets.only(left:20), ),
                                    Text("Today ToDo" ,style: TextStyle(fontSize: 17),)  , 
                                ],)
                         ),

                         Container(padding: EdgeInsets.fromLTRB(0, 14, 0, 10),
                               child: Row(children: [
                                    Icon((Icons.loop),size: 18,),
                                    Padding(padding:EdgeInsets.only(left:20), ),
                                    Text("Daily Routine",style: TextStyle(fontSize: 17),)  , 
                                ],)
                         ),
                         Container(padding: EdgeInsets.fromLTRB(0, 14, 0, 10),
                               child: Row(children: [
                                    Icon((Icons.article_rounded),size: 18,),
                                    Padding(padding:EdgeInsets.only(left:20), ),
                                    Text("Write journal",style: TextStyle(fontSize: 17),)  , 
                                ],)
                         ),
                         Container(padding: EdgeInsets.fromLTRB(0, 14, 0, 10),
                               child: Row(children: [
                                    Icon((Icons.note_rounded),size: 18,),
                                    Padding(padding:EdgeInsets.only(left:20), ),
                                    Text("Take a note",style: TextStyle(fontSize: 17),)  , 
                                ],)
                         ),
                         Container(padding: EdgeInsets.fromLTRB(0, 14, 0, 10),
                               child: Row(children: [
                                    Icon((Icons.mood_outlined),size: 18,),
                                    Padding(padding:EdgeInsets.only(left:20), ),
                                    Text("Mood Entry",style: TextStyle(fontSize: 17),)  , 
                                ],)
                         ),
                         Container(padding: EdgeInsets.fromLTRB(0, 14, 0, 10),
                               child: Row(children: [
                                    Icon((Icons.nights_stay_rounded),size: 18,),
                                    Padding(padding:EdgeInsets.only(left:20), ),
                                    Text("Sleep Entry",style: TextStyle(fontSize: 17),)  , 
                                ],)
                         ),
                          Container(padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                               child: Row(children: [
                                    Icon((Icons.more_vert_rounded),size: 18,),
                                    Padding(padding:EdgeInsets.only(left:20), ),
                                    Text("More",style: TextStyle(fontSize: 17),)  , 
                                ],)
                         ),


                    
              ],
                                          
          ),
                                 ),
                                        ]),

          ),
        );

       //botton sheet and context closed
               

  }
}