import 'package:flutter/material.dart';

import 'c.dart';
import 'custombuttom.dart';
import 'l.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(itemCount: data.length,itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("${data[index].title}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Image.asset("${data[index].image}",width: double.infinity,height: 200,),

                Text("${data[index].body}",style: TextStyle(fontSize: 20),),
                custombutton()
              ],
            ),
          );
        }),

      )

    );
  }
}
