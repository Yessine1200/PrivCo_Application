import 'package:flutter/material.dart';
import 'package:privco/modules/challenge.dart';
import 'package:privco/screens/details/challenge_detail.dart';


class ChallengeCategory extends StatelessWidget {
  final Challenge challenge;

  ChallengeCategory(this.challenge);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>ChallengeDetail(challenge.title,challenge.imageUrl, challenge.price, challenge.days, challenge.users))
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(231, 242, 248, 100),
                  Color.fromRGBO(177, 212, 224, 80),
                ],
              )
          ),

          margin: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30,top: 20),
                    child: Column(
                      children: [
                        Container(alignment: Alignment.topLeft,child: Text('${challenge.days} days',style: TextStyle(color: Colors.black87),)),
                        SizedBox(height: 10,),
                        Container(alignment: Alignment.topLeft,child: Text('${challenge.title}',style: TextStyle(fontWeight: FontWeight.bold),)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                                //margin: EdgeInsets.only(left: 20),
                                child: Icon(Icons.supervised_user_circle_sharp)
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Text('${challenge.users} users joined',style: TextStyle(color: Colors.grey,fontSize: 16,),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 170,top: 10),
                    width: 450,
                    height: 140,
                    child: Image.asset(challenge.imageUrl,),
                  )
        ]
              ),
        ),

      ),
    );
  }
}
