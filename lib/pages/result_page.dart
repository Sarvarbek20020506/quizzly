import 'package:flutter/material.dart';
class ResultPage extends StatefulWidget {
  static final String id = "result_page";
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Stack(
          children: [

            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
            ),
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //#Circless
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: Colors.purpleAccent,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.purpleAccent,
                        ),
                      ),
                      SizedBox(width: 120,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 120,),
                //questions
                Container(
                  margin: EdgeInsets.all(45),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Colors.white,
                    boxShadow:[ BoxShadow(
                      color: Colors.purpleAccent.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                    ],
                  ),
                ),

              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.8),
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
              ),
            ),
            //Results
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [

               Stack(
                 children: [
                   Container(
                     height:120,
                     width: 120,
                     decoration: BoxDecoration(
                       color: Colors.purpleAccent.withOpacity(0.7),
                       borderRadius: BorderRadius.circular(60),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Container(
                     height:100,
                     width: 100,
                     decoration: BoxDecoration(
                       color: Colors.purpleAccent.withOpacity(0.9),
                       borderRadius: BorderRadius.circular(50),
                     ),
                   ),
                 ],
               ),
             ],
           ),
          ],
        ),),
        Container(
          color: Colors.white,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25),),
            ),
            child: Center(
              child: Text('QUIZZLY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
            ),
          ),
        ),
      ],
    );
  }
}
