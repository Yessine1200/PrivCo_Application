import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:privco/screens/Auth/auth_screen.dart';
import 'package:privco/screens/Profile/height.dart';
import 'package:privco/screens/Profile/starting_weight.dart';
import 'package:privco/screens/Profile/target_weight.dart';
import 'package:privco/screens/favourites/favourites_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfile extends StatefulWidget {
  final String userName;
  final String email;
  final String age;
  final String imageUser;
  final String startingWeight;
  final String height;
  final String tragetWeight;
  //final String userId;
  //final Key key;

 MyProfile( this.userName, this.email, this.age, this.imageUser, this.startingWeight, this.height, this.tragetWeight) ;

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {


  String value = "";

  File _pickedImage ;
  String _imagepath;

  _imgFromCamera() async {
    var img = await ImagePicker.platform.pickImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = File(img.path);
    });
  }
  _imgFromGallery() async {
    var img = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _pickedImage = File(img.path);
      print(_pickedImage);
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  void initState() {
    super.initState();
    print('yessine');

    LoadImage();

  }
  @override
  Widget build(BuildContext context) {


    String imageUser;
    String _username;
    TextEditingController userName = TextEditingController();
    final user =  FirebaseAuth.instance.currentUser;
    final id = user.uid;
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;



    Future getImage(ImageSource src) async {
      final ImagePicker _picker = ImagePicker();

      final pickedImageFile = await _picker.pickImage(
          source: src, imageQuality: 50, maxWidth: 150);

      if (pickedImageFile != null) {
        setState(() {
          _pickedImage = File(pickedImageFile.path);
          print('het');
        });
      } else {
        print("No Image Selected");
      }
    }

    _sendData() async {
      bool hasException = false;
      final user =  FirebaseAuth.instance.currentUser;
      final id = user.uid;
      try {
        await FirebaseFirestore.instance.collection('users').doc(id).update({
          'username': userName.text.trim(),
        });
      } catch (e) {
        hasException = true;
      }
    }


    sendData() async{
      bool hasException = false;
      final ref = FirebaseStorage.instance.ref().child("user/profile/$id+'.jpg");
      await ref.putFile(_pickedImage);
      final url = await ref.getDownloadURL();

      try {
        await FirebaseFirestore.instance.collection('users').doc(id).update({
          'imageUser': url,
        });
      } catch (e) {
        hasException = true;
      }
    }

    deleteData() async{

        await FirebaseFirestore.instance.collection('users').doc(id).delete();
      }

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Color.fromRGBO(249, 241, 240, 100),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            _imagepath !=null
                ? CircleAvatar(backgroundImage: FileImage(File(_imagepath)),radius: 50,)
            :CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              backgroundImage: _pickedImage != null ? FileImage(_pickedImage) :null,
            ),
            //SizedBox(height: 10,),
            Container(
              child: FlatButton(
                child: Text('Change Profile Photo',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),),
                onPressed: () {
                  showModalBottomSheet<void>(
                    //backgroundColor: Color.fromRGBO(249, 241, 240, 100),
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 270,
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 50,left: 20),
                                child: Text('Change Profile Photo',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                            SizedBox(height: 20,),
                            Divider(thickness: 2,),
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    FlatButton(
                                        onPressed: () async{
                                          _showPicker(context);
                                        },
                                        child: Text('New Profile Photo',style: TextStyle(fontSize: 18,color: Colors.black),)),
                                    SizedBox(width: 85,),
                                    FlatButton(
                                        onPressed: () async{
                                          setState(() {
                                            sendData();
                                            saveImage(_pickedImage.path);
                                          });

                                          Navigator.pop(context);
                                        },
                                        child: Text('save',style: TextStyle(fontSize: 18,color: Colors.purple),)),
                                  ],
                                )),
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 0,left: 5),
                                child: FlatButton(child: Text('Import from Facebook',style: TextStyle(fontSize: 18,color: Colors.black),))),
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 0,left: 5),
                                child: FlatButton(child: Text('Remove Profile Photo',style: TextStyle(fontSize: 18,color: Colors.red),))),
                          ],
                        ),
                      );
                    },

                  );
                }
            )
      ),
            Container(
              width: 200,
              child: TextFormField(
                controller: userName,
                textAlign: TextAlign.center,
                autocorrect: true,
                enableSuggestions: false,
                textCapitalization: TextCapitalization.words,
                key: ValueKey('username'),
                validator: (val) {
                  if (val.isEmpty || val.length < 4) {
                    return "Please enter at least 4 characters";
                  }
                  return null;
                },
                /*onChanged: (val) {
                  setState(() {
                    _username = val;
                  });
                },*/
                decoration: InputDecoration(
                  hintText: widget.userName,
                  //labelStyle: TextStyle(color: Colors.black,fontSize: 16,),
                  //border: const UnderlineInputBorder(),
                  //filled: true,
                ),
              ),
            ),
            FlatButton(
              child: Text('EDIT NAME',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold)),
              onPressed: (){
                _sendData();
                print(widget.userName);},
            ),
            SizedBox(height: 40,),
            Text(widget.email,style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: ListTile(
                hoverColor: Colors.grey,
                onTap: (){},
                title: Text('Manage personal data'),
                trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    hoverColor: Colors.grey,
                    onTap: (){},
                    title: Text('Privacy Policy'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                  ),
                  Divider(thickness: 1,),
                  ListTile(
                    hoverColor: Colors.grey,
                    onTap: (){},
                    title: Text('Terms of Use'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                  ),
                  Divider(thickness: 1,),
                  ListTile(
                    hoverColor: Colors.grey,
                    onTap: (){},
                    title: Text('Subscription Terms'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 710,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    hoverColor: Colors.grey,
                    onTap: (){},
                    title: Text('Fitness Level'),
                    trailing: Text('Newbie',style: TextStyle(color: Colors.grey,fontSize: 18),),
                  ),
                  Divider(thickness: 1,),
                  ListTile(
                    hoverColor: Colors.grey,
                    onTap: (){},
                    title: Text('Focus Zones'),
                    trailing: Text('Legs',style: TextStyle(color: Colors.grey,fontSize: 18),),
                  ),
                  Divider(thickness: 1,),
                  ListTile(
                    hoverColor: Colors.grey,
                    onTap: (){},
                    title: Text('Physical limitations'),
                    trailing: Text('None',style: TextStyle(color: Colors.grey,fontSize: 18),)
                  ),
                  Divider(thickness: 1,),
                  ListTile(
                      hoverColor: Colors.grey,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>StratingWeight())
                        );
                      },
                      title: Text('Starting Weight'),
                      trailing:Text('${widget.startingWeight} kg',style: TextStyle(color: Colors.grey,fontSize: 18),)

            ),
                  Divider(thickness: 1,),
                  ListTile(
                      hoverColor: Colors.grey,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>TargetHeight())
                        );
                      },
                      title: Text('Target Weight'),
                      trailing: Text('${widget.tragetWeight} kg',style: TextStyle(color: Colors.grey,fontSize: 18),)
                  ),
                  Divider(thickness:
                   1,),
                        ListTile(
                            hoverColor: Colors.grey,
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>Height())
                              );
                            },
                            title: Text('Height'),
                            trailing: Text('${widget.height} cm',style: TextStyle(color: Colors.grey,fontSize: 18),)
                        ),
                        Divider(thickness: 1,),
                        ListTile(
                            hoverColor: Colors.grey,
                            onTap: (){},
                            title: Text('Units'),
                            trailing: Text('Metres & kilograms',style: TextStyle(color: Colors.grey,fontSize: 18),)
                        ),
                        Divider(thickness: 1,),
                        ListTile(
                            hoverColor: Colors.grey,
                            onTap: (){},
                            title: Text('Daily Steps Goal'),
                            trailing: Text('7.000 steps',style: TextStyle(color: Colors.grey,fontSize: 18),)
                        ),
                        Divider(thickness: 1,),
                        ListTile(
                            hoverColor: Colors.grey,
                            onTap: (){
                              Navigator.pushReplacementNamed(context, FavouritesScreen.routeName);
                            },
                            title: Text('Favourites Meals'),
                          trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                        ),
                        Divider(thickness: 1,),
                        ListTile(
                            hoverColor: Colors.grey,
                            onTap: (){},
                            title: Text('Age'),
                            trailing: Text(widget.age,style: TextStyle(color: Colors.grey,fontSize: 18),)
                  ),
                ],
              ),
            ),

            Container(
              height: 130,
              width: double.infinity,
              color: Color.fromRGBO(249, 241, 240, 100),
              child: Center(
                child: FlatButton(
                  minWidth: 300,
                  splashColor: Colors.grey,
                  onPressed: (){
                    showModalBottomSheet<void>(
                    //backgroundColor: Color.fromRGBO(249, 241, 240, 100),
                    shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 350,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top:70),
                              child: Text("Are you sure you'd like to\n                log out?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                            ),
                            Container(
                              height: 50,
                              width: 300,
                              margin: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.red
                              ),
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text('CANCEL',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 300,
                              //margin: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: FlatButton(
                              onPressed:() async{
                                await FirebaseAuth.instance.signOut();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>AuthScreen()
                                )
                                );
                              },
                                child: Text('LOG OUT',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                              ),
                            )
                          ],
                        ),
                      );

                    } );
                  },
                  child: Text('LOG OUT',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),

              ),
            )
    )



          ],

        ),

      ),
    );
  }

  void saveImage(path) async{
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    saveimage.setString('imagepath', path);
    setState(() {
      _imagepath = path;
    });
    print('image save');
  }

  void LoadImage() async{
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    setState(() {
      _imagepath = saveimage.getString('imagepath');
      print('load :'+ _imagepath);
    });
  }
}
class UserSimplePreferences {
  static SharedPreferences _preferences;

  static const _keyUserimaage = 'userImage';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

      static Future setUserimage(String userImage) async =>
          await _preferences.setString(_keyUserimaage, userImage);

      static String getUserimage() => _preferences.getString(_keyUserimaage);
}
