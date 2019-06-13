import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          backGroundImage(),
          backGroundGradientColor(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                customTextField(),
                SizedBox(height: 16.0,),
                customTextField(),
                SizedBox(height: 16.0),
                customButton(),
                SizedBox(height: 32.0),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Create Account', style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),),
                      Text('Need Help?', style: TextStyle(
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget customButton() {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: (){
          print('tapped');
        },
        child: Container(
          height: 60.0,
          width: 300.0,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFf5851f).withOpacity(0.7),
                    blurRadius: 2,
                    offset: Offset(1, 3)
                )
              ],
              color: Color(0xFFf5851f),
              borderRadius: BorderRadius.all(Radius.circular(25.0))
          ),
          child: Center(
              child: Text('Get Started', style: TextStyle(
                color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget backGroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/tan_43-2_2x.png'),
          fit: BoxFit.fitHeight
        ),
      )
    );
  }

  Widget backGroundGradientColor() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                Color(0xFFf45d27).withOpacity(0.6),
                Color(0xFFf5851f).withOpacity(0.2)
            ]
        ),
      ),
    );
  }

  Widget customTextField() {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 60.0,
        width: 300.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.7),
              blurRadius: 2,
              offset: Offset(1, 3)
            )
          ],
          color: Colors.white.withOpacity(0.6),
          borderRadius: BorderRadius.all(Radius.circular(25.0))
        ),
        //color: Colors.white.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.person_pin, color: Colors.black54,),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500
              )
            ),
          ),
        ),
      ),
    );
  }
}
