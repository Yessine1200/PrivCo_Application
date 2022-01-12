import 'package:flutter/material.dart';

class SliderContainer extends StatefulWidget {

  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    double _currentvalue = 0;

    return Column(
      children: [
        Row(
          children: [
            Container(padding: EdgeInsets.only(left: 18),child: Text('SERVING SIZE',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            Container(
              padding: EdgeInsets.only(left: 205,),
              child: Text('${_currentvalue}g',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            )
          ],
        ),
        SizedBox(height: 10,),
        Slider(
          value: _currentSliderValue,
          min: 0,
          max: 100,
          inactiveColor: Colors.grey,
          activeColor: Color.fromRGBO(91, 6, 138, 100),
          divisions: 10,
          //label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
              _currentvalue+=_currentSliderValue;
              print(_currentvalue);
            });
          },
        ),
        SizedBox(height: 10,),
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromRGBO(91, 6, 138, 100),
            borderRadius: BorderRadius.all(Radius.circular(35))
          ),
          child: FlatButton(
            onPressed: (){},
            child: Text('LOG',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        )
      ],
    );
  }
}
