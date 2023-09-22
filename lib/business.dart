import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class thirdclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget content=Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20),
        child: Text("Band is a multidisciplinary creative studio",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)),
        SizedBox(
          height:0.8,
        ),
        Padding(padding:EdgeInsets.all(10),
        child: Text("We work together to design,create and produce work that we are proud of for floks that we believe in."
           " We are avalibale for hire in a wide range of creative diciplane for a variety of job,projects and gigs."
           "Their About Us page stands out by showcasing some of their unique and creative projects."
           "No number of words could hope to tell one of their potential clients nearly as much as these pictures can."
           "In this case, the 25 pictures featured on Band’s About Us page are worth much more than the 170 actual words you’ll read on the page."
           "The magical visuals and overall simple look and feel make this About Us page one of our top picks.",
         style:TextStyle(wordSpacing:0.5),),),
      ],
    );
    Widget images=Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Image.asset('images/business2.jpeg', width: 150,height: 100,),
          Image.asset('images/businees.jpeg', width: 150,height: 100,),

      ],
      
    );
    return Scaffold(
        body: ListView(
          children: [
            content,
            Image.asset('images/business1.jpeg', width: 800,),
            images,
            Image.asset('images/business.jpeg', width: 200,height: 200,),
          ],
        ),
    );
  }

}