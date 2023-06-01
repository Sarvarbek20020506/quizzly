import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizzly/pages/result_page.dart';


class QuestionPage extends StatefulWidget {
  static final String id = "question_page";
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {


  List list = ["+","*","-","/"];



  int a1 = Random(0).nextInt(5)+1;
  int a2 = Random(0).nextInt(5)+1;



  String operations (List list){
    return list[Random().nextInt(4)];
  }
  
   result (a1,a2,list){
    if(operations(list) =="+"){
      return a1+a2;
    }
    if(operations(list)=="-"){
      return a1-a2;
    }if(operations(list)=="*"){
      return a1*a2;
    }if(operations(list)=="/"){
      return a1/a2;
    }
    print(result(a1, a2, list));
  }



  @override
  Widget build(BuildContext context) {
    //double natija = result(a1, a2, list);

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
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text("$a1" + operations(list).toString()+"$a2" +"=..",style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  margin: EdgeInsets.only(left: 30,right: 30),
                  height: MediaQuery.of(context).size.width/8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2,color: Colors.purpleAccent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${a1}",style: TextStyle(color: Colors.black,fontSize: 25),),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 3,color: Colors.purpleAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  margin: EdgeInsets.only(left: 30,right: 30),
                  height: MediaQuery.of(context).size.width/8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2,color: Colors.purpleAccent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${a2}",style: TextStyle(color: Colors.black,fontSize: 25),),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, ResultPage.id);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 3,color: Colors.purpleAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  margin: EdgeInsets.only(left: 30,right: 30),
                  height: MediaQuery.of(context).size.width/8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2,color: Colors.purpleAccent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("${a2}",style: TextStyle(color: Colors.black,fontSize: 25),),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 3,color: Colors.purpleAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  margin: EdgeInsets.only(left: 30,right: 30),
                  height: MediaQuery.of(context).size.width/8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2,color: Colors.purpleAccent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${a1}",style: TextStyle(color: Colors.black,fontSize: 25),),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 3,color: Colors.purpleAccent),
                          ),
                        ),
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
