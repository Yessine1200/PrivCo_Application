import 'package:flutter/material.dart';
import 'package:privco/screens/Forms/form_habit.dart';


class FormDiet extends StatefulWidget {
  static const routeName = 'form_diet';
  Color _color1 = Colors.grey;
  Color _color2 = Color.fromRGBO(218, 17, 225, 100);


  @override
  _FormDietState createState() => _FormDietState();
}

class _FormDietState extends State<FormDiet> {
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,

      ),
      body: ListView(
        children: [
          SizedBox(height: height/40,),
            Container(
              padding: EdgeInsets.only(left: width/4.5),
                child:
                    Text("Choose your diet  ",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),             
                ),
            SizedBox(height: height/18,),
            Container(
              height: height-120,
              padding: EdgeInsets.only(right: 20),
              child: Expanded(child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                        border: Border.all(color:widget._color1,width: 1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child:
                          Text('Traditionnal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                          onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                        border: Border.all(color:widget._color1,width: 1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child: Text('Vegetarian',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                      onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                        border: Border.all(color:widget._color1,width: 1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child: Text('Vegetarian(Plant diet)',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                            onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                        border: Border.all(color:widget._color1,width: 1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child: Text('Gluten free ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                             onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:widget._color1,width: 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child: Text('Lactose  free ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1)),
                      onPressed: (){
                        setState(() {
                          Color color;
                          color = widget._color1;
                          widget._color1 = widget._color2;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:widget._color1,width: 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child:
                          Text('Keto ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                          onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color:widget._color1,width: 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child: Text('Keto vegan',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17,letterSpacing: 1),),
                             onPressed: (){},
                    ),
                  ),
                ),

              ],)),
            ),
            SizedBox(height: height/80,),
            Padding(
              padding:  EdgeInsets.only(bottom: height/10, right: width/20,left: width/20),
              child: Container(
                width: 355,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(175, 129, 205, 40),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormHabit()),);},
                  child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
            ),
          ],
        ),

    );
  }
}
