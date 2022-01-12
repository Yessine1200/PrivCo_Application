import 'package:flutter/material.dart';

class MindPlan extends StatelessWidget {
  static const routeName = 'mind_plan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Chapter 1',style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Text('Start With Your Mind',style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)
          ),
          Container(
            width: 330,
            height: 300,
            decoration: BoxDecoration(
                color: Color.fromRGBO(239, 235, 224, 100),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Image.asset('assets/images/start_mind.png',width: 100,),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: 330,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(189, 198, 217, 100),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: ListTile(
              onTap: (){},
              title: Text("We know What You're Thinking!"),
              trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Colors.black,),
              subtitle: Text('6 min read'),
            ),

          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
              width: 330,
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(227, 232, 241, 100),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            child: ListTile(
              title: Text('Stop Them Before They Stop\nYou',maxLines: 2,),
              //contentPadding: EdgeInsets.only(top: 10),
              subtitle: Text('2 min read'),

          ),
          )
        ],
      ),
    );
  }
}
