import 'package:flutter/material.dart';

class PortfolioSliverAppBar extends StatelessWidget {
  final String _title;
  final String _image;

  PortfolioSliverAppBar(this._title,this._image);

  @override
  Widget build(BuildContext context) {
    const int height = 220;

    return SliverAppBar(
      //centerTitle: true,
      //title: Text(_title, style: TextStyle(color: Colors.black,)),
      iconTheme: IconThemeData(color: Colors.red,),
      backgroundColor: Colors.white,
      expandedHeight: 230,
      pinned: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(_title,textAlign: TextAlign.start,),
        background:  Container(
            child: Image.asset(_image,fit: BoxFit.cover,scale: 200,)
        )

      ),
    );
  }
}
