import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Lottery());
}

class Lottery extends StatefulWidget {
   Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {

 Random random=Random();

  int x = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Lottery")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winning number is 4")),
            SizedBox(height: 15,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),borderRadius: BorderRadius.circular(20)
              ),
              child: x==4 ?  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.done_all,color: Colors.green,size: 35,),
                SizedBox(height: 10,),
                Text("Congratulation you have won the lottery",textAlign: TextAlign.center,),
              ]) :
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.error,color: Colors.red,size: 35,),
                SizedBox(height: 10,),
                Text("Better luck next time your number is $x\n try again",textAlign: TextAlign.center,)
              ]),
            )
          ],
          
        ),
        floatingActionButton: FloatingActionButton(onPressed:() {
        x=random.nextInt(10);
        setState(() {
          
        });
        },
        child:Icon(Icons.refresh,) ,
        ),
      ),
    );

  }
}