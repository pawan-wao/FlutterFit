import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/Model/model_data.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutDetails extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.deepPurple,
                Colors.deepPurpleAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),

        ),
        child: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60,left: 25,right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, 'home');
                            },
                              child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                            Spacer(),
                            Icon(Icons.info_outline_rounded,color: Colors.white,),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text('Legs Toning \nand Glutes Workout',
                          style: TextStyle(color: Colors.white,
                              fontSize: 25, fontWeight: FontWeight.bold ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Icon(Icons.timer,color: Colors.white,),
                              SizedBox(width: 20,),
                              Icon(Icons.add, color: Colors.white,),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                    ),
                   ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.only(topRight: Radius.circular(80),),
                    color: Colors.white,
                  ),

                  child: Stack(
                    children: [Column(
                      children:[
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                        child: Row(
                          children: [
                            Text("Circuit 1: Legs Toning",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                              ,),
                            Spacer(),
                            Icon(CupertinoIcons.refresh_thick,color: Colors.deepPurpleAccent,),
                            SizedBox(width: 15,),
                            Text("3 sets",
                              style: TextStyle(fontSize: 15,color: Colors.grey),
                              ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                            itemCount: ModelData.item.length,
                            itemBuilder: (context, index){
                              return Container(
                                padding: EdgeInsets.only(right: 20, left: 25,bottom: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(borderRadius:
                                      BorderRadius.all(Radius.circular(15),
                                      ),
                                        color: Colors.green,
                                      ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                        child: Image.asset(ModelData.item[index].image.toString(),fit: BoxFit.cover,)),

                                    ),
                                    SizedBox(width: 15,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20, left: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Text(ModelData.item[index].title.toString(),style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                                        SizedBox(height: 10,),
                                        Text(ModelData.item[index].desc.toString(),style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),)
                                      ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                    ),
  ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}