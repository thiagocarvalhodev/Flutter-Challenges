import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class LoginScreen extends StatelessWidget {
  final mainColor = Color(0xFF50b6bb);
  final secondColor = Color(0xFF45969b);

  // function that show the CardLogin in the screen
  // without use the Stack to do it
  showOverlay(BuildContext context, double sizeTopBar) {
    // first OverlayState and OverlayEntry
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          child: _cardLogin(context),
          top: sizeTopBar - 20,
          left: 20,
          right: 20,
        );
      }
    );
    // And then Insert the widget in the screen
    overlayState.insert(overlayEntry);
  }

  // in order to don't use the StatefulWidget and the initState
  // use the Future to get the ShowOverlay function
  @override
  Widget build(BuildContext context) {
    double sizeTopBar = MediaQuery.of(context).size.height / 4;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
      // Wait to get the function showOverlay
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              _backGround(context, sizeTopBar),
              Positioned(
                child: _cardLogin(context),
                top: sizeTopBar - 20,
                left: 20,
                right: 20,
              )
            ],
          )
        ),
      ),
    );
  }

  Widget _backGround(BuildContext context, double sizeTopBar) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text('Cheap\nOrganize-se, sai mais barato!', 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'WorkSans',
              color: Colors.white, 
              fontSize: 24, 
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal
          ),),
          height: sizeTopBar,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20), 
              bottomRight: Radius.circular(20)
            ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  secondColor,
                  mainColor
                ]
              )
          )
        ),
        Container(color: Colors.white,)
    ],);
  }

  Widget _cardLogin(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Card(
        elevation: 2.5,
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Login', style: TextStyle(
                color: mainColor, fontSize: 24, fontWeight: FontWeight.w500,
                fontFamily: 'WorkSans'
              ),),
              customTextField(
                labelText: 'Email',
                hintText: 'exemplo@email.com',
                labelStyle: TextStyle(
                  color: mainColor,
                  fontSize: 12, fontWeight: FontWeight.bold,
                  fontFamily: 'WorkSans'
                  )
              ),
              customTextField(
                obscureText: true,
                hintText: '* * * * * *',
                labelText: 'Senha',
                labelStyle: TextStyle(
                    color: mainColor,
                    fontSize: 12, fontWeight: FontWeight.bold,
                    fontFamily: 'WorkSans'
                  ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Esqueceu a senha?', style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'WorkSans'
                ),),
              ),
              customButton(),
              Align(
                alignment: Alignment.center,
                child: Text('Não tem uma conta?\nRegistre-se', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'WorkSans'
                ),),
              ),
            ],
          ),
        )
      ),
    );
  }

  Widget customTextField({
    bool obscureText = false, 
    String labelText, 
    String hintText, 
    TextStyle labelStyle}) {
      return TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: labelStyle
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
          height: 50.0,
          width: 200.0,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: mainColor.withOpacity(0.7),
                    blurRadius: 2,
                    offset: Offset(1, 3)
                )
              ],
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  mainColor,
                  secondColor
                ]
              ),

              borderRadius: BorderRadius.all(Radius.circular(25.0))
          ),
          child: Center(
              child: Text('Login', style: TextStyle(
                color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
      ),
    );
  }
}