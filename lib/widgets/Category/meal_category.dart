import 'package:flutter/material.dart';
import 'package:privco/screens/details/meal_detail_screen.dart';


class MealCategory extends StatelessWidget {

  final String id;
  final String title;
  final int kcal;
  final String imageUrl;
  final String time;

  MealCategory({
    @required this.id,
    @required this.title,
    @required this.kcal,
    @required this.imageUrl,
    @required this.time
  });

  void selectMeal(BuildContext ctx){
    Navigator.of(ctx).pushNamed(MealDetailScreen.routeName,
      arguments: id,
    ).then((result) {
      //if (result != null) removeItem(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                  ),
                  child: Image.asset(imageUrl,height: 200,width: double.infinity,fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26,color:Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text(time),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/plat.png',width: 25,),
                      SizedBox(width: 6,),
                      Text('$kcal kcal')
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
