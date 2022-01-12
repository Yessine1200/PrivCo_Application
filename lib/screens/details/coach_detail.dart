import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:privco/modules/coaches.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:privco/screens/chat/chat_screen.dart';


import 'gym_detail.dart';


class CoachDetail extends StatelessWidget {

  final String id;
  final String name;
  final String imageUrl;
  final String experience;
  final String cost;
  final String workPlace;
  final List field;
  final String rate;
  final String phoneNumber;
  final String email;
  final String trophies;
  final List<String> images;
  final String imageWorkplace;
  final double width;
  final double height;



  CoachDetail( this.id, this.name, this.imageUrl, this.experience, this.cost, this.workPlace, this.field, this.rate, this.phoneNumber, this.email, this.trophies, this.images, this.imageWorkplace, this.width, this.height);


  void selectCoach(BuildContext ctx){
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (context) => GymDetail(workPlace,images, imageWorkplace, width, height)),
    );
  }


  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [IconButton(onPressed: (){Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen(name)),
        );}, icon: Icon(Icons.chat_bubble_outline))],
        ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 101,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(60)
            ),
            child: ClipOval(child: Image.asset(imageUrl)),
      ),
          SizedBox(height: 15,),
          Container(
             alignment: Alignment.center,
               child: Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
           ),
          SizedBox(height: 30,),
          Container(
            //alignment: Alignment.center,
            padding: EdgeInsets.only(left: 15,top: 70),
            width:  350,
            height: 280,
            decoration: BoxDecoration(
              color: Color.fromRGBO(211, 211, 211, 100),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Experience',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 180,),
                    Text(experience)
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Cost',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 235,),
                    Text(cost)
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Rate',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 130,),
                    RatingBar.builder(
                      itemSize: 20,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Workplace',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 150,),
                    FlatButton(
                        onPressed: ()=>selectCoach(context),
                        child: Text(workPlace,style: TextStyle(color: Color.fromRGBO(175, 129, 205, 100)),)
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Field',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 130,),
                    for(var c in field) Text(c)
                  ],
                ),
                SizedBox(height: 15,),
              ],

            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 335,
            decoration: BoxDecoration(
                color: Color.fromRGBO(175, 129, 205, 100),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
            ),
            child: FlatButton(
              child: const Text('Contact',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        actions: [
                          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close_fullscreen,size: 25,))
                        ],
                        automaticallyImplyLeading: false,
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                      ),
                      body: Container(
                        height: 330,
                        color: Colors.transparent,
                        child: Center(
                          child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('Phone Number :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 25,),
                                    Text(phoneNumber)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('email :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 25,),
                                    Text(email)
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),

                    );
                  },
                );
              },
            ),
          ),
      ]
    ),

    );
  }
}
