import 'package:flutter/material.dart';
import 'dart:math' as math;

class ProfileDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(22.0, 0.0, 22.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Name', style: TextStyle(
                  ),),
                  SizedBox(height: 4.0,),
                  Text('Jordão!!!', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                  ),)
                ],
              ),
              SizedBox(height: 16.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Email', style: TextStyle(
                  ),),
                  SizedBox(height: 4.0,),
                  Text('Jordao@gmail.com', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                  ),)
                ],
              ),
              SizedBox(height: 16.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Location:', style: TextStyle(
                  ),),
                  SizedBox(height: 4.0,),
                  Text('São Paulo, BR', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                  ),)
                ],
              ),
              SizedBox(height: 16.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Languages', style: TextStyle(
                  ),),
                  SizedBox(height: 4.0,),
                  Text('English, Portuguese', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                  ),)
                ],
              ),
              SizedBox(height: 16.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Occupation', style: TextStyle(
                  ),),
                  SizedBox(height: 4.0,),
                  Text('Sales man', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                  ),)
                ],
              ),
              Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('My Family:', style: TextStyle(
                  ),),
                  SizedBox(height: 16.0,),
                  Text('Kitty Short!!!', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                  ),),
                  SizedBox(height: 16.0,),
                  Text('Alex Short!!!', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0
                  ),)
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
  
}

// we use the PreferredSizeWidget because AppBar
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 25.0,
            )
          ]
        ),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.dehaze, color: Colors.white,),
                  onPressed: (){},
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text('Profile',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),),
                ),
                IconButton(icon: Icon(Icons.notifications, color: Colors.white,),
                  onPressed: (){},
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(36.0, 5.0, 8.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 110.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://yt3.ggpht.com/a/AGF-l7-qyZx2ZEYz7VQQSN2cFG_A2-PR7qwn6YNhug=s900-mo-c-c0xffffffff-rj-k-no"
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Text('Jordão!!!', style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white
                      ),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Schedule', style: TextStyle(
                                  fontSize: 18.0, color: Colors.white
                              ),),
                              Text('8', style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),)
                            ],
                          ),
                          SizedBox(width: 12.0,),
                          Column(
                            children: <Widget>[
                              Text('Events', style: TextStyle(
                                  fontSize: 18.0, color: Colors.white
                              ),),
                              Text('15', style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),)
                            ],
                          ),
                          SizedBox(width: 12.0,),
                          Column(
                            children: <Widget>[
                              Text('Routines', style: TextStyle(
                                  fontSize: 18.0, color: Colors.white
                              ),),
                              Text('4', style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Savings', style: TextStyle(
                                  fontSize: 18.0, color: Colors.white
                              ),),
                              Text('20k', style: TextStyle(
                                  fontSize: 26.0, fontWeight: FontWeight.bold, color: Colors.white),)
                            ],
                          ),
                          SizedBox(width: 12.0,),
                          Column(
                            children: <Widget>[
                              Text('July Goal', style: TextStyle(
                                  fontSize: 18.0, color: Colors.white
                              ),),
                              Text('20k', style: TextStyle(
                                  fontSize: 26.0, fontWeight: FontWeight.bold, color: Colors.white),)
                            ],
                          ),
                        ],
                      ),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: (){
                    print('Buttom pressed');
                  },
                  child: Transform.rotate(
                    angle: math.pi / 18,
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, -2),
                                color: Colors.black54,
                                blurRadius: 4.0
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16.0))
                      ),
                      child: Center(
                        child: Text('Profile Edit',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),),
                      height: 32.0,
                      width: 110.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 300);
}

class MyClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path p = Path();

    p.lineTo(0, size.height - 70);
    p.lineTo(size.width, size.height);
    p.lineTo(size.width, 0);

    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}

