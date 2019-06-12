import 'package:flutter/material.dart';

// colors
// 0xFFf45d27
// 0xFFf5851f

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFf45d27),
                    Color(0xFFf5851f)
                  ]
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(),

                  Icon(Icons.airplanemode_active, 
                    size: 35,
                    color: Colors.white,
                  ),
                  Spacer(),

                  Align(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0),
                      child: Text('Login', 
                        style: TextStyle(
                          fontSize: 18.0, color: Colors.white
                      ),),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 40.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      // 'puxa a sombra pra baixo'
                      offset: Offset(0, 5),
                      blurRadius: 15.0,
                      color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                  color: Colors.white
                ),
                child: 
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email, color: Colors.grey,),
                          hintText: 'Email',
                          hintStyle: 
                            TextStyle(
                              color: Colors.grey,
                              
                            ),
                        ),
                    ),
                  )
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 40.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      // 'puxa a sombra pra baixo'
                      offset: Offset(0, 5),
                      blurRadius: 15.0,
                      color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                  color: Colors.white
                ),
                child: 
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.vpn_key, color: Colors.grey,),
                          hintText: 'Password',
                          hintStyle: 
                            TextStyle(
                              color: Colors.grey,
                              
                            ),
                        ),
                    ),
                  )
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0, right: 40.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot password?', style: 
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0),
                  ),),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.2,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,             
                  colors: [
                    Color(0xFFf45d27),
                    Color(0xFFf5851f)
                  ]
                ),
              ),
              child: InkWell(
                onTap: (){},
                child: Text('Login', 
                  style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.white
                  ),),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t have an account? '),
                  GestureDetector(
                    child: Text('Register!', style: TextStyle(
                      color: Colors.redAccent
                    ),),
                )
            ],),
            )
          ],
          
        ),
      )
    );
  }
}