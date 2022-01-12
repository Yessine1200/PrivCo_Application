import 'package:flutter/material.dart';
import 'package:privco/data/breakfast_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:privco/widgets/slider_container.dart';


class Breakfast extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search)
          )
        ],
        elevation: 0,
        title: Text('Breakfast',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String>{
  final mealsBreakfast = [
    "Bagel with Ham, Egg & cheese",
    "Biscuit with Egg",
    "Biscuit with Egg and Sausage",
    "Chicken Egg Roll ",
    "Chinese Egg Roll",
    "Croissant with Egg and Cheese",
    "Croissant-sausage, Egg & cheese 1",
    "Dried Egg",
    "Egg",
    "Egg Bagel",
    "Egg Bread",
    "Egg Bread, toasted"
  ];

  final recentMeals = [
    "Chinese Egg Roll",
    "Croissant with Egg and Cheese",
    "Croissant-sausage, Egg & cheese 1",
    "Dried Egg",
    "Egg",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for app bar
    return [
      IconButton(
          onPressed: (){
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        )
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList =  DUMMY_BREAKFAST.where((element) => element.title.startsWith(query)).toList();

    return ListView.builder(
        itemBuilder: (context, index)=>ListTile(
          onTap: (){
            showResults(context);
          },
              trailing: FlatButton(
                onPressed: (){
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.transparent,
                          automaticallyImplyLeading: false,
                          elevation: 0,
                          actions: [Container(padding: EdgeInsets.only(right: 10),child: IconButton(icon:Icon(Icons.close_fullscreen),onPressed: (){Navigator.pop(context);},),)],
                        ),
                        body: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only( left: 20,top: 20,),
                              child: Text('${suggestionList[index].title}',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 30,),
                            Divider(height: 10),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Column(
                                    children: [
                                      Text('Carbs',style: TextStyle(color: Colors.grey, fontSize: 20),),
                                      SizedBox(height: 10,),
                                      Text('${suggestionList[index].carbs}g',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                                    ],
                                  ),
                                ),
                                SizedBox(width: 90,),
                                Container(
                                  child: Column(
                                    children: [
                                      Text('Protein',style: TextStyle(color: Colors.grey, fontSize: 20),),
                                      SizedBox(height: 10,),
                                      Text('${suggestionList[index].protein}g',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                                    ],
                                  ),
                                ),
                                SizedBox(width: 90,),
                                Container(
                                  child: Column(
                                    children: [
                                      Text('Fats',style: TextStyle(color: Colors.grey, fontSize: 20),),
                                      SizedBox(height: 10,),
                                      Text('${suggestionList[index].fats}g',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Divider(height: 10,),
                            SizedBox(height: 20,),
                            SliderContainer(),


                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text('Edit',style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              leading: Container(
                height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(207, 209, 209, 100),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Icon(Icons.add, size: 20,color: Colors.red,)
              ),
          subtitle: Text(suggestionList[index].text),
          title: RichText(text: TextSpan(
              text: suggestionList[index].title.substring(0, query.length),
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [TextSpan(
              text: suggestionList[index].title.substring(query.length),
              style: TextStyle(color: Colors.grey)

            )]
          ),
          ),
        ),
      itemCount: suggestionList.length,
    );
  }

}
