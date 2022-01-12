import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:privco/screens/paying.dart';


class ChallengeDetail extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int price;
  final int days;
  final String users;

  const ChallengeDetail( this.title, this.imageUrl, this.price, this.days, this.users);



  @override
  Widget build(BuildContext context) {

    List<String> images = [
      'assets/images/trans1.jpg',
      'assets/images/trans2.jpg',
      'assets/images/trans3.jpg',
      'assets/images/trans4.jpg',
      'assets/images/trans5.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(231, 242, 248, 100),
                            Color.fromRGBO(177, 212, 224, 80),
                          ],
                        )
                    ),
                      child: Image.asset(imageUrl)
                  ),
                   Container(
                        margin: EdgeInsets.only(top: 300),
                        width: double.infinity,
                        height: 750,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(30), topRight: Radius.circular(30))
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  //alignment: Alignment.topLeft,
                                  child: Text(title,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(width: 120,),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  width: 58,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.all(Radius.circular(13)),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(91, 6, 138, 100),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('$days',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 0,),
                                      Text('Days',style: TextStyle(color: Colors.grey),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                    child: Icon(Icons.supervised_user_circle_sharp)
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  child: Text('${users} users joined',style: TextStyle(color: Colors.grey,fontSize: 16,),),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=>Paying()
                                )
                                );
                              },
                              child: Container(
                                width: 350,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(91, 6, 138, 100),
                                  borderRadius: BorderRadius.all(Radius.circular(30))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('JOIN CHALLENGE',style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    Text('Only ${price} dinars',style: TextStyle(color: Colors.white,fontSize: 15, )),

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 70),
                                    child: Image.asset('assets/images/check.png',width: 25,)
                                ),
                                SizedBox(width: 10,),
                                Text('Double encryption. One-time payment',style: TextStyle(color: Colors.grey,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 30,),
                            Divider(),
                            SizedBox(height: 15,),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 28),
                              child: Text("WHAT YOU'LL GET",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(60)),
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey,width: 3)
                                      ),
                                      child: ClipOval(child: Image.asset('assets/images/loupe.jpg',fit: BoxFit.cover)),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                        margin: EdgeInsets.only(left: 30),
                                        child: Text('Step-b\ny-step\nguide')
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(60)),
                                        color: Colors.white,
                                          border: Border.all(color: Colors.grey,width: 3)
                                      ),
                                      child: ClipOval(child: Image.asset('assets/images/meal.jpg',fit: BoxFit.cover)),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                        margin: EdgeInsets.only(left: 30),
                                        child: Text('fundame\nntal meal\n   plans')
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(60)),
                                          color: Colors.white,
                                          border: Border.all(color: Colors.grey,width: 3)
                                      ),
                                      child: ClipOval(child: Image.asset('assets/images/montain.jpg',fit: BoxFit.cover,)),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                        margin: EdgeInsets.only(left: 30),
                                        child: Text('improved\n   health\n')
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(60)),
                                          color: Colors.white,
                                          border: Border.all(color: Colors.grey,width: 3)

                                      ),
                                      child: ClipOval(child: Image.asset('assets/images/daily.jpg',fit: BoxFit.cover,)),

                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                        margin: EdgeInsets.only(left: 30),
                                        child: Text('   daily\nsupport\n')
                                    )
                                  ],
                                ),

                              ],
                            ),
                            SizedBox(height: 50,),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 28),
                              child: Text("HOW IT WORKS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(30)),
                                              color: Color.fromRGBO(195, 163, 212, 100)
                                            ),
                                            child: Text('1',style: TextStyle(color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Text('Join the \nChallenge')
                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 10),
                                              width: 45,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                  color: Color.fromRGBO(195, 163, 212, 100)
                                              ),
                                            child: Text('2',style: TextStyle(color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Text('Get detailed\ninstructions')
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 40,),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                              width: 45,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                  color: Color.fromRGBO(195, 163, 212, 100)
                                              ),
                                            child: Text('3',style: TextStyle(color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Text('Follow rules\n& tips')
                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                      Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Container(
                                            alignment: Alignment.center,
                                              width: 45,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                  color: Color.fromRGBO(195, 163, 212, 100)
                                              ),
                                            child: Text('4',style: TextStyle(color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Text('Enjoy the new\nyou')
                                        ],
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                  Container(
                    margin: EdgeInsets.only(top: 1050),
                    height: 1600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                      color: Color.fromRGBO(207, 209, 209, 100),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 100,right: 50),
                          child: Text('RESULTS THAT MAKE US PROUD',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Colors.black87),),
                        ),
                        SizedBox(height: 10),
                        CarouselSlider(
                            options: CarouselOptions(
                              height: 700,
                              enableInfiniteScroll: false,
                              autoPlay: false,
                            ),
                          items: images



































































































































































































                              .map((e){
                                  return Card(
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                            elevation: 4,
                                            //margin: EdgeInsets.only(left: 20),
                                          child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(15),
                                                      topRight: Radius.circular(15)
                                                  ),
                                                  child: Image.asset(e,height: 200,width: double.infinity,fit: BoxFit.cover,),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(left: 20, top: 20),
                                                        child: Text('Sabine R',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(left: 110, top: 20),
                                                      child: RatingBar.builder(
                                                            itemSize: 17,
                                                            initialRating: 5,
                                                            minRating: 1,
                                                            direction: Axis.horizontal,
                                                            allowHalfRating: true,
                                                            itemCount: 5,
                                                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                                            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                                            onRatingUpdate: (rating) {
                                                            print(rating);
                                                            },
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(top: 20,right: 9,),
                                                  child: Text('The videos are really helpful and easy\nto understand. The meal adviser also\nworks well for me.I can sleep early\nnow.',style: TextStyle(color: Colors.grey,fontSize: 15.5),),
                                                )

                                              ],
                                            ),
                                  );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                Container(
                  margin: EdgeInsets.only(left: 135,top: 1000),
                  width: 120,
                  child: Image.asset('assets/images/trophy.png'),),
                Container(
                  margin: EdgeInsets.only(top: 1950),
                  color: Colors.white,
                  width: double.infinity,
                  height: 1000,
                )



              ],
                ),
              ]
            )

        ),

    );
  }
}
