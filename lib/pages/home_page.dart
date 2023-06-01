import 'package:flutter/material.dart';
import 'package:quizzly/pages/question_page.dart';
class HomePage extends StatefulWidget {
  static final String id = "homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpeg',),
                  fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.purple.withOpacity(0.7),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //TextQuiz
                Center(child:Text('QUIZZLY',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
                ),
                Container(
                 padding: EdgeInsets.all(20),
                 child:  Container(

                   height: 180,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.8),
                     borderRadius: BorderRadius.circular(30),
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SizedBox(height: 20,),
                       Text("Welcome to Quizzly!",style: TextStyle(color: Colors.purpleAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                       SizedBox(height: 5,),
                       Text("   With Quizzly, you can improve your thinking, intelligence and logical skills.",style: TextStyle(color: Colors.purpleAccent,fontSize: 20,fontWeight: FontWeight.w500,),),

                     ],
                   ),
                 ),
               ),
                SizedBox(height: 15,),
                Text("Choose the appropriate level...",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, QuestionPage.id);
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.withOpacity(0.9),
                      borderRadius:BorderRadius.circular(20),
                      border: Border.all(width: 1.5,color: Colors.white)
                    ),
                    child: Center(
                      child: Text("Easy",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.withOpacity(0.9),
                      borderRadius:BorderRadius.circular(20),
                      border: Border.all(width: 1.5,color: Colors.white)
                    ),
                    child: Center(
                      child: Text("Medium",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.withOpacity(0.9),
                      borderRadius:BorderRadius.circular(20),
                      border: Border.all(width: 1.5,color: Colors.white)
                    ),
                    child: Center(
                      child: Text("Hard",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
