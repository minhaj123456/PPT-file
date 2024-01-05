import 'package:file/PPT.dart';
import 'package:flutter/material.dart';

// import 'package:kmo/teacherpage.dart';


class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 121, 120, 120),
      body: Padding(
        padding:  EdgeInsets.only(top:350,left: 20),
        child: Column(
          children: [
           
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(40),
                          
                        ),
              child: InkWell(
                 onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PPT()));

                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 35,
                      ),
                    ),
                    
                    const Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Text("Teacher's",style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,color:Colors.white
                                          ),),
                    ),
                  ],
                ),
              ), 
            ),
            const SizedBox(height: 50,),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                          color: Color.fromARGB(255, 45, 191, 50),
                          borderRadius: BorderRadius.circular(40),
                          
                        ),
              child: InkWell(
                onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoginPage()));

                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        
                        
                        height: 35,
                      ),
                    ),
                    
                    const Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Text("Student's",style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,color:Colors.white
                                          ),),
                    ),
                  ],
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
 }