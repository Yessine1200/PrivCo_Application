import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GymDetail extends StatelessWidget {
  final String title;
  final List<String> images;
  final String imageWorkplace;
  final double width;
  final double height;

  GymDetail(this.title, this.images, this.imageWorkplace, this.width, this.height);


  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(

    target: LatLng(36.84168226987249, 10.155875355253972),
    zoom: 6,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(36.71421223283655, 10.274649450529116),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 0),
            width: 100,
            height: 101,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(60)
            ),
            child: ClipOval(child: Image.asset(imageWorkplace,width: 50,)),
      ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(width*0.2),
                width: width*4.9,
                height: 180,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(211, 211, 211, 100),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              Container(
                //margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(width*0.2),
                      width: width*4,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(211, 211, 211, 100),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                      ),
                      child: FlatButton(
                        onPressed: (){},
                        child: Text('Schedule',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(width*0.2),
                      width: width*4,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(211, 211, 211, 100),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                      ),
                      child: FlatButton(
                              onPressed: (){
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
                                            body: ListView.builder(
                                                itemBuilder: (ctx,index)=>Column(
                                                  children: [
                                                    Card(
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(15),
                                                        ),
                                                        elevation: 4,
                                                        margin: EdgeInsets.all(10),
                                                    child:ClipRRect(
                                                        borderRadius: BorderRadius.all(Radius.circular(15)),
                                                        child: Image.asset(images[index],width: double.infinity,fit: BoxFit.cover,),
                                                    ),

                                          ),
                                                  ],
                                                ),
                                                itemCount: images.length
                                            ),
                                  );},
                              );
                                  },

                          child: Text('Gallery',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))

                      ),
                    )

                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 10,),
            alignment: Alignment.topLeft,
            child: Text('Program',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          )
      ]
    )
    );
  }
}
